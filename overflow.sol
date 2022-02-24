// SPDX-License-Identifier: GPL-3.0

// pragma solidity 0.5.0;
pragma solidity 0.8.0;

contract Property {
    uint8 public x = 255;

    function increment() public {
        // x += 1;
        unchecked {
            x += 1;
        }
    }
}
