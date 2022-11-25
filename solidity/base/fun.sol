// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract FunctionTypes {
    uint256 public number = 5;

    // error pure can't read and write variable
    // function addPure() external pure{
    //     number = number +1
    // }

    function correntPure1(uint256 _number) external pure returns (uint256){
        uint256 new_number;
        new_number = _number + 1;
        return new_number;
    }

    function correntPure2(uint256 _number) external pure returns (uint256 new_number){
        new_number = _number + 1;
    }

    function addView() external view returns (uint256){
        uint256 new_number;
        //number = number +1; error view only can read variable
        new_number = number + 1;
        return new_number;
    }

    function minus() internal {
        number = number - 1;
    }

    function minusCall() external {
        minus();
    }

    function minusCall1() public {
        this.minusCall();
    }
}