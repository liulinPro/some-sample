// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Yeye {
    event Log(string msg);

    // 定义3个function: hip(), pop(), man()，Log值为Yeye。
    function hip() public virtual {
        emit Log("Yeye");
    }

    function pop() public virtual {
        emit Log("Yeye");
    }

    function yeye() public virtual {
        emit Log("Yeye");
    }
}

contract Baba is Yeye {

    // 继承两个function: hip()和pop()，输出改为Baba。
    function hip() public virtual override {
        emit Log("Baba");
    }

    function pop() public virtual override {
        emit Log("Baba");
    }

    function baba() public virtual {
        emit Log("Baba");
    }

    function B() public {
        super.pop();
    }
}

contract Erzi is Yeye, Baba {
    function E() public {
        super.pop();
    }

    // 继承两个function: hip()和pop()，输出值为Erzi。
    function hip() public  virtual override(Yeye, Baba) {
        emit Log("Erzi");
    }

    function pop() public  virtual override(Yeye, Baba) {
        emit Log("Erzi");
    }
}

contract Base1 {
    modifier exactDivedBy2And3(uint256 _a) virtual {
        require(_a % 2 == 0 && _a % 3 == 0);
        _;
    }
}

contract Identifier is Base1 {
    //计算一个数分别被2除和被3除的值，但是传入的参数必须是2和3的倍数
    function getExactDividedBy2And3(uint256 _dividend) public pure exactDivedBy2And3(_dividend) returns (uint256, uint256){
        return getExactDividedBy2And3WithoutModifier(_dividend);
    }

    //计算一个数分别被2除和被3除的值
    function getExactDividedBy2And3WithoutModifier(uint256 _dividend)
    public
    pure
    returns (uint256, uint256)
    {
        uint256 div2 = _dividend / 2;
        uint256 div3 = _dividend / 3;
        return (div2, div3);
    }

    modifier exactDivedBy2And3(uint256 _a) override {
        _;
        require(_a % 2 == 0 && _a % 1 == 0);
    }
}

// 构造函数的继承
abstract contract A {
    uint public a;

    constructor(uint _a) {
        a = _a;
    }
}

contract B is A(1){

}

contract C is A {
    constructor(uint _c) A(_c * _c) {}
}



contract Test {

    modifier exactDivedBy2And3(uint256 _a) virtual {
        require(_a % 2 == 0 && _a % 3 == 0);
        _;
    }
    event xx(string value);
    constructor(string memory value) public  {
        emit xx(value);
    }

    function Iam(uint _id) public  virtual exactDivedBy2And3(_id) payable  returns(uint){
        return _id;
    }

    // function Iam(uint  _id) public  view virtual exactDivedBy2And3(_id)   returns(uint ){
    //     return _id;
    // }

    function Iam1(uint  _id) public virtual exactDivedBy2And3(_id)  view returns(uint){
        return _id;
    }


    function Iam2() view public{

    }

}

contract Test001 is Test {
    event xx1(string value);
    constructor() Test("test01") public {
        emit xx1("test001");
    }
}


contract Test002 is Test("test02") {
    event xx1(string value);
    constructor() public {
        emit xx1("test002");
    }
}
