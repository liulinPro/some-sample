// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract selector {
    event Log(bytes data);

    function mint(address to) external {
        emit Log(msg.data);
    }

    function mintSelect() external view returns (bytes) {
        return bytes4(keccak256("mint(address)"));
    }

    function callWithSignature() external returns (bool, bytes memory){
        (bool success, bytes memory data) = address(this).call(abi.encodeWithSignature("mint(address)", 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4));
        return (success, data);
    }
}
