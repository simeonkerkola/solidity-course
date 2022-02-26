//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract MyTokens{
    string[] public tokens = ['BTC', 'ETH'];
    
    function changeTokens() public {
        string[] storage t = tokens;
        t[0] = 'VET';
    }
}

// Consider this Smart Contract.

// Modify the changeTokens() function in such a way that it changes the state
// variable called tokens.

// contract CryptosToken{
//     string constant public name = "Cryptos";
//     uint supply;
//     address public owner;
    
    
//     constructor(uint _supply){
//         supply = _supply;
//         owner = msg.sender;
        
//     }
    
    
//     function setSupply(uint s) public{
//         supply = s;
//     }
    
    
//     function getSupply() public view returns(uint){
//         return supply;
//     }
    
// }