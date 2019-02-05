pragma solidity ^0.4.24;

import "/ethereum-localized-messaging/contracts/Localization.sol";

/// @title Adds FISSION specific functionality to Localization
contract FissionLocalization is Localization {
    event FissionCode(bytes32 indexed code, string message);

    /// @notice Emits a FissionCode event for give _code
    /// @param _code The code with which to retrieve the message passed to FissionCode event
    function log(bytes32 _code) public {
        emit FissionCode(_code, dictionary_[_code]);
    }
}
