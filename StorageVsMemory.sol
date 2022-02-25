// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.0;

contract A {
    string[] public cities = ['Prague', 'Bucharest'];

    function f_memory() public view {
        string[] memory s1 = cities;

        // s1 is NOT a reference to cities
        s1[0] = 'Berlin';
    }

     function f_storage() public {
        string[] storage s1 = cities;

        // s1 is a reference to cities
        s1[0] = 'Berlin';
    }
}
