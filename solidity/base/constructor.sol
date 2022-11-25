// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract T{
    address public owner;
    uint public a;
    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner {
        require(msg.sender==owner);
        _;
    }

    function changeOwner()external onlyOwner{
        a=10; // tochange
    }
}