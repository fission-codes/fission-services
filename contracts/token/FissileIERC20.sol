pragma solidity ^0.5.0;

/**
 * @title Fissile ERC20 interface
 * @dev see https://eips.ethereum.org/EIPS/eip-20 and https://eips.ethereum.org/EIPS/eip-1066
 */
interface FissileIERC20 {
  function transfer(address to, uint256 value) external returns (byte status);

  function approve(address spender, uint256 value) external returns (byte status);

  function transferFrom(address from, address to, uint256 value) external returns (byte status);

  function totalSupply() external view returns (byte status, uint256 value);

  function balanceOf(address who) external view returns (byte status, uint256 balance);

  function allowance(address owner, address spender) external view returns (byte status, uint256 amount);

  event Transfer(address indexed from, address indexed to, uint256 value);

  event Approval(address indexed owner, address indexed spender, uint256 value);
}
