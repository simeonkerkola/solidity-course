// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.0;

contract Property {
    int public price;
    string constant public location = "London";

    // Pure function
    function f1() public pure returns(int) {
        int x = 5;
        x = x * 2;
        return x;
    }
}
