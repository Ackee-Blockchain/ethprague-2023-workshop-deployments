// SPDX-License-Identifier: ISC
pragma solidity 0.8.20;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/proxy/utils/UUPSUpgradeable.sol";

contract DummyV2 is Ownable, UUPSUpgradeable {
    string constant public VERSION = "2.0.0";

    function _authorizeUpgrade(address newImplementation) internal override onlyOwner {}
}
