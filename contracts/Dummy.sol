// SPDX-License-Identifier: ISC
pragma solidity 0.8.20;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/proxy/utils/UUPSUpgradeable.sol";

contract Dummy is Ownable, UUPSUpgradeable {
    string constant public VERSION = "1.0.0";

    function initialize() external {
        require(owner() == address(0), "Already initialized");

        _transferOwnership(msg.sender);
    }


    function _authorizeUpgrade(address newImplementation) internal override onlyOwner {}
}