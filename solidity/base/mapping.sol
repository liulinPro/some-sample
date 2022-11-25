// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

// 我们定义一个结构体 Struct
    struct Student {
        uint256 id;
        uint256 score;
    }

contract Map {
    mapping(uint => address) public idToAddress; // id映射到地址
    mapping(address => address) public swapPair; // 币对的映射，地址到地址

    //mapping(Student => uint) public testVar; //error 映射的_KeyType只能选择solidity默认的类型
    mapping(uint256 => Student) public testVar;

    function writeMap (uint _Key, address _Value) public{
        idToAddress[_Key] = _Value;
    }
}
