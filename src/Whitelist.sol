// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import "./IWhitelist.sol";

contract Whitelist is IWhitelist {
    address owner;

    struct Record {
        address addr;
        bool whitelist;
        bytes32 reason;
    }

    constructor() {
        owner = msg.sender;
    }

    mapping(address => Record) public whitelist;

    function checkAddress(address addr) external view returns (bool) {
        return whitelist[addr].whitelist;
    }

    function addToWhitelist(address addr, bytes32 reason) external payable {
        Record memory rec = Record(addr, true, reason);
        whitelist[addr] = rec;
    }
}
