// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.12;

contract A {
    int public x = 10;
    int y = 20;

    function get_y() public view returns(int) {
        return y;
    }
    function get_x() private view returns(int) {
        return x;
    }
    function funk() public view returns(int) {
        int a;
        a = get_x();
        return a;
    }
    function funkInternal() internal view returns(int) {
        return x;
    }

    // External functions are more efficient in gas consuption than public functions
    function funkExternal() external view returns(int) {
        return x;
    }
}

contract B is A {
    int public xx = funkInternal();
    // int public xxx = funkExternal(); // Can't call external functions
}

contract C {
    A public contract_a = new A();
    int public xxx = contract_a.funkExternal();
    // int public xxxx = contract_a.get_x(); // Can't call private functions
    //  int public xxxxx = contract_a.funkInternal(); // Can't call internal functions
}
