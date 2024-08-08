// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

interface IWhitelist {
    function checkAddress(address addr) external view returns (bool);

    function addToWhitelist(address addr, bytes32 reason) external payable;
}
