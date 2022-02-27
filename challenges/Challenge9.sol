//SPDX-License-Identifier: GPL-3.0
 
pragma solidity >=0.5.0 <0.9.0;

// Declare a function that concatenates two strings.
 
contract Challenge{

    function concat(string memory a, string memory b) public pure returns (string memory) {
        string memory c;
        c = string(abi.encodePacked(a, b));
        return c;
    }
}

