//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

// Change the state variable name to be declared as a public constant.

// Declare a setter and a getter function for the supply state variable.

contract CryptosToken{
    string constant public name = "Cryptos";
    uint supply;

    function getSupply() public view returns(uint) {
        return supply;
    }
    function setSupply(uint _supply) public {
        supply = _supply;
    }
}