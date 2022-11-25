// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract C {
    uint256[8] array1;
    bytes1[5] array2;
    address[100] array3;

    uint256[] array4;
    bytes1[] array5;
    address[] array6;
    bytes array7;

    function newArray() public {
        uint256[] memory array8 = new uint256[](5);
        bytes memory array9 = new bytes(9);
    }
}


    struct Student {
        uint256 id;
        uint256 score;
    }
contract D {
    uint256[] array = [uint256(4), 5];
    Student student;

    function f() public pure {
        // g(1,2,3]); error
        g([uint256(1), 2, 3]);
    }

    function g(uint256[3] memory x) public pure returns (uint256[3] memory) {
        x[0] = 1;
        x[1] = 3;
        x[2] = 4;
        return x;
    }

    function pushArray() public returns (uint256[] memory) {
        uint256[2] memory a = [uint256(1), 2];
        array = a;
        array.push(3);
        array.push(4);
        array.push(5);
        array.length;
        array.pop();
        return array;
    }

    //方法1
    function initStudent1() external {
        Student storage _student = student;
        _student.id = 11;
        _student.score = 100;
    }

    // 方法2
    function initStudent2() external{
        student.id =1;
        student.score =80;
    }
}


