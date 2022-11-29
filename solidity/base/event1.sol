// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;


contract E {

    // 定义事件
    event ReceivCalled(address Sender, uint Value);
    // 接收ETH时释放Received事件
    receive() external payable {
        emit ReceivCalled(msg.sender, msg.value);
    }

    event fallbackCalled(address sender, uint value, bytes data);
    // fallback
    fallback() external payable{
        emit fallbackCalled(msg.sender, msg.value, msg.data);
    }

    function getBalance() external view returns(uint256 amount,uint256 amount1){
        return (address(this).balance, msg.sender.balance);
    }
}
