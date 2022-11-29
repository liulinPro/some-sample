// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract F{
    function saySomething() public pure returns(string memory){
        return ("nothing");
    }

    function saySomething(string memory something) public pure returns(string memory){
        return(something);
    }
}