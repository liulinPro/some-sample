// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;


contract ReceiveETH {
    event Log(uint amount, uint gas);
    receive() external payable{
        emit Log(msg.value, gasleft());
    }
    // 返回合约ETH余额
    function getBalance() view public returns(uint) {
        return address(this).balance;
    }
}

contract SendETH {
    error  SendFailed();
    error  CallFailed();

    // 构造函数，payable使得部署的时候可以转eth进去
    constructor() payable{}
    // receive方法，接收eth时被触发
    receive() external payable{}


    // 用transfer()发送ETH
    function transferETH(address payable _to, uint256 amount) external payable{
        _to.transfer(amount);
    }
    function sendEth(address payable _to, uint256 amount) external payable{
        bool success = _to.send(amount);
        if(!success){
            revert SendFailed();
        }
    }


    function callETH(address payable _to, uint256 amount) external payable{
        (bool success,)= _to.call{value:amount}("");
        if(!success){
            revert CallFailed();
        }
    }
}