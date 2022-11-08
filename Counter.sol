// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.7;

contract Counter {
    uint public count;

    function increment() external {
        count += 1;
    }
}