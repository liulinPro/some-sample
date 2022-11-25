// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Variables {
    uint256 public x = 1;
    uint256 public y;
    string public z;

    function foo() external {
        // 可以在函数里更改状态变量的值
        x = 5;
        y = 2;
        z = "0xAA";
    }

    function bar() external pure returns (uint256) {
        uint256 xx = 1;
        uint256 yy = 3;
        uint256 zz = xx + yy;
        return (zz);
    }

    //全局变量是全局范围工作的变量，都是solidity预留关键字。他们可以在函数内不声明直接使用：
    function global() external view returns(address, uint, bytes memory){
        address sender = msg.sender;
        uint blockNum = block.number;
        bytes memory data = msg.data;
        return(sender, blockNum, data);
    }
}
