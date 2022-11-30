pragma solidity ^0.8.0;

contract hash {
    bytes32 _msg = keccak256("OxAA");
    function hash(uint _num, string memory _str, address _addr) public pure returns (bytes32) {
        return keccak256(abi.encodePacked(_num, _str, _addr));
    }

    // 弱抗碰撞性
    function weak(
        string memory string1
    )public view returns (bool){
        return keccak256(abi.encodePacked(string1)) == _msg;
    }

    // 强抗碰撞性
    function strong(
        string memory string1,
        string memory string2
    )public pure returns (bool){
        return keccak256(abi.encodePacked(string1)) == keccak256(abi.encodePacked(string2));
    }
}
