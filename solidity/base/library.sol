// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

// 通过网址引用
import 'https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/utils/Strings.sol';
import 'https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/utils/Address.sol';
import {Yeye} from './inheritance.sol';


contract S1{
    // 利用using for指令
    using Strings for uint256;
    function getString1(uint256 _number) public pure returns(string memory){
        // 库函数会自动添加为uint256型变量的成员
        return _number.toHexString();
    }

    // 直接通过库合约名调用
    function getString2(uint256 _number) public pure returns(string memory){
        return Strings.toHexString(_number);
    }
}

contract Import {
    // 成功导入Address库
    using Address for address;
    // 声明yeye变量
    Yeye yeye = new Yeye();

    // 测试是否能调用yeye的函数
    function test() external{
        yeye.hip();
    }
}

account 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2
other 0xa131AD247055FD2e2aA8b156A11bdEc81b9eAD95
call 0x652c9ACcC53e765e1d96e2455E618dAaB79bA595
