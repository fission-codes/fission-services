pragma solidity ^0.5.0;

import { FISSION } from "fission-codes/contracts/FISSION.sol";

contract FissileERC20 is FissileIERC20 {
    using SafeMath for uint256;

    mapping (address => uint256) private balances;

    mapping (address => mapping (address => uint256)) private allowed;

    uint256 private _totalSupply;

      /////////////
     // Queries //
    /////////////

    function totalSupply()
      public view
      returns (byte status, uint256 supply)
    {
        return _totalSupply;
    }

    function balanceOf(address owner)
      public view
      returns (byte status, uint256 balance)
    {
        return balances[owner];
    }

    function allowance(address owner, address spender)
      public view
      returns (byte status, uint256 amount)
    {
        return allowed[owner][spender];
    }

      ///////////////
     // Mutations //
    ///////////////

    function transfer(address to, uint256 value)
      public
      returns (byte status)
    {
        _transfer(msg.sender, to, value);
        return 0x51;
    }

    function approve(address spender, uint256 value)
      public
      returns (byte status)
    {
        _approve(msg.sender, spender, value);
        return 0x01;
    }

    function transferFrom(address from, address to, uint256 value)
      public
      returns (byte status)
    {
        _transfer(from, to, value);
        _approve(from, msg.sender, allowed[from][msg.sender].sub(value));
        return 0x51;
    }

    function increaseAllowance(address spender, uint256 addedValue)
      public
      returns (byte status)
    {
        _approve(msg.sender, spender, allowed[msg.sender][spender].add(addedValue));
        return 0x01;
    }

    function decreaseAllowance(address spender, uint256 subtractedValue)
      public
      returns (byte status)
    {
        _approve(msg.sender, spender, allowed[msg.sender][spender].sub(subtractedValue));
        return 0x01;
    }

      ////////////////////////
     // Internal Functions //
    ////////////////////////

    function _transfer(address from, address to, uint256 value)
      internal
      returns (byte status)
    {
        require(to != address(0));

        balances[from] = balances[from].sub(value);
        balances[to] = balances[to].add(value);
        emit Transfer(from, to, value);

        return 0x01;
    }

    function _mint(address account, uint256 value)
      internal
      returns (byte status)
    {
        require(account != address(0));

        _totalSupply = _totalSupply.add(value);
        balances[account] = balances[account].add(value);
        emit Transfer(address(0), account, value);

        return 0x01;
    }

    function _burn(address account, uint256 value)
      internal
      returns (byte status)
    {
        require(account != address(0));

        _totalSupply = _totalSupply.sub(value);
        balances[account] = balances[account].sub(value);
        emit Transfer(account, address(0), value);

        return 0x01;
    }

    function _approve(address owner, address spender, uint256 value)
      internal
      returns (byte status)
    {
        require(spender != address(0));
        require(owner != address(0));

        allowed[owner][spender] = value;
        emit Approval(owner, spender, value);

        return 0x01;
    }

    function _burnFrom(address account, uint256 value)
      internal
      returns (byte status)
    {
        _burn(account, value);
        return _approve(account, msg.sender, allowed[account][msg.sender].sub(value));
    }
}
