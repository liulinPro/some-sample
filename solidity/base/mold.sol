// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract mold {
    bool public _bool = true;
    bool public _bool1 = !_bool;
    bool public _bool2 = _bool && _bool1;
    bool public _bool3 = _bool || _bool1;
    bool public _bool4 = _bool == _bool1;
    bool public _bool5 = _bool != _bool1;
}

contract mold1 {
    int public _int = - 1;
    uint public _uint = 1;
    uint256 public _number = 20220330;
    uint256 public _number1 = _number + 1; // +，-，*，/
    uint256 public _number2 = 2 ** 2; // 指数
    uint256 public _number3 = 7 % 2; // 取余数
    bool public _numberbool = _number2 > _number3; // 比大小
}

contract addressType {
    address public _address = 0x7A58c0Be72BE218B41C608b7Fe7C5bB630736C71;
    address payable _address1 = payable(_address);
}

contract byteType {
    bytes32 public _byte1 = "MiniSolidity";
    bytes1 public _byte = _byte1[0];
}

contract EumType {
    enum ActionSet {Buy, HOld, Shell}
    ActionSet action = ActionSet.Buy;

    function enumToUint() external view returns (uint){
        return uint(action);
    }
}