// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract abi {
    uint256 x = 10;
    address addr = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    string name = "hello";
    uint256[2] arr = [uint256(1), 2];

    function encode() public view returns (bytes memory) {
        return abi.encode(x, addr, name, arr);
    }

    function encodePacked() public view returns (bytes memory) {
        return abi.encodePacked(x, addr, name, arr);
    }

    function encodeWithSignature() public view returns (bytes memory) {
        return abi.encodeWithSignature("foo(uint256,address,string,uint256[2])", x, addr, name, arr);
    }

    function encodeWithSelect() public view returns (bytes memory) {
        return abi.encodeWithSelector(bytes4(keccak256("foo(uint256,address,string,uint256[2])")), x, addr, name, arr);
    }

    function decode(bytes memory data) public view returns (uint256, address, string memory, uint256[2] memory) {
        return abi.decode(data, (uint256, address, string, uint256[2]));
    }
}
