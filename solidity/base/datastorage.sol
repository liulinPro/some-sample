// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;


contract DataStorage{
    uint[]  x = [1,2,3];

    function fStroage() public{
        uint[] storage xStorage = x;
        xStorage[0]=100;
    }

    function fMemroy() public{
        uint[] memory xMemory = x;
        xMemory[0]=100;
    }

    function fStroage1() public returns(uint[] memory){
        //声明一个Memory的变量xMemory，复制x。修改xMemory不会影响x
        uint[] storage xMemory = x;
        xMemory[0] = 100;
        xMemory[1] = 200;
        //uint[] memory xMemory2 = xMemory; // in memeory,so will changed
        uint[] storage xMemory2 = xMemory; // not in memeory,so will not be changed
        xMemory2[0] = 300;
        return xMemory;//x=[300,100,3] xMemory=[300,100,3]
    }

    function fMemory1() public view returns(uint[] memory){
        //声明一个Memory的变量xMemory，复制x。修改xMemory不会影响x
        uint[] memory xMemory = x;
        xMemory[0] = 100;
        xMemory[1] = 200;
        uint[] memory xMemory2 = xMemory;
        xMemory2[0] = 300;
        return xMemory; //x=[1,2,3] xMemory=[300,100,3]
    }

    function fStroageAndMemory() public{
        uint[] memory xMemory = x;
        // uint[] storage xMemory2= xMemory ; error
        xMemory2[0] =100;
    }
}