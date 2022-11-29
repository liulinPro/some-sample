// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;


contract OtherContract{
    uint256 private _x = 0;
    event Log(uint amount,bytes data,bytes4 sig, uint gas);

    function getBalance() view external returns(uint balance){
        balance = address(this).balance;
    }

    function setX(uint256 x) external payable{
        _x = x;
        if(msg.value > 0){
            emit Log(msg.value,msg.data, msg.sig, gasleft());
        }
    }

    function getX() external view returns(uint x){
        x=_x;
    }
}
contract Callcontract{
    function callSetX(address _Address, uint256 x) external{
        OtherContract(_Address).setX(x);
    }

    function callGetX(OtherContract _Address) external view returns(uint x){
        x = _Address.getX();
    }

    function callGetX2(address _Address) external view returns(uint x){
        x =  OtherContract(_Address).getX();
    }

    function setXTransferETH(address otherContract, uint256 x) payable external{
        OtherContract(otherContract).setX{value: msg.value}(x);
    }
}