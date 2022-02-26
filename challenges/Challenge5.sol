//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract Deposit{

    receive() external payable {
    }

    function getBalance() public view returns(uint) {
        return address(this).balance;
    }
    function transfer(address payable addr) public {
        uint balance = getBalance();
        addr.transfer(balance);
    }
    
}

// Consider the solution from the previous challenge.

// Add a function that transfers the entire balance of the contract to another address.

// Deploy and test the contract on Rinkeby Testnet.

// contract Deposit{

//     receive() external payable {
//     }

//     function getBalance() public view returns(uint) {
//         return address(this).balance;
//     }
// }