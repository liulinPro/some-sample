// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

abstract contract Base {
    string public  name = "Base";
    function getAlias() public  view virtual returns(string memory);
}

contract BaseImpl is Base{
    function getAlias() public view override returns(string memory){
        return  name;
    }
}

interface Base1 {
    function getFirstName() external pure returns(string memory);
}

contract Base1Impl is Base1{
    function getFirstName() external pure override returns(string memory){
        return "Linden";
    }
}


interface ERC165 {
    /// @notice Query if a contract implements an interface
    /// @param interfaceID The interface identifier, as specified in ERC-165
    /// @dev Interface identification is specified in ERC-165. This function
    ///  uses less than 30,000 gas.
    /// @return `true` if the contract implements `interfaceID` and
    ///  `interfaceID` is not 0xffffffff, `false` otherwise
    function supportsInterface(bytes4 interfaceID) external view returns (bool);
}
interface Solidity101 {
    function hello() external pure;
    function world(int) external pure;
}

contract Selector {
    function calculateSelector() public pure returns (bytes4,bytes4,bytes4,bytes4,bytes4) {
        Solidity101 i;
        ERC165 e;

        return (i.hello.selector, i.world.selector,i.hello.selector ^ i.world.selector,e.supportsInterface.selector,bytes4(keccak256('supportsInterface(bytes4)')));
    }
}