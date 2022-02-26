//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

// Consider the solution from the previous challenge.

// Add a public state variable of type address called owner.

// Declare the constructor and initialize all the state variables in the constructor.
// The owner should be initialized with the address of the account that deploys the contract.

contract CryptosToken {
    string constant public name = "Cryptos";
    address public owner;
    uint supply;

    constructor(uint _supply) {
        owner = msg.sender;
        supply = _supply;
    }

    function getSupply() public view returns(uint) {
        return supply;
    }
    function setSupply(uint _supply) public {
        supply = _supply;
    }
}