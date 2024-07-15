
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Error_Handeling {
    function RequireFunc(uint i) public pure {
        require(i > 7, "Input must be greater than 7");
    }

    function RevertFunc(uint i) public pure {
        if (i <= 7) {
            revert("Input must be greater than 7");
        }
    }

    function AssertFunc(uint num) public pure {
        assert(num == 15);
    }
}

