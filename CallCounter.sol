
// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.13;


interface ICounter {
    function count() external view returns(uint) ;
    function increment() external ;
} 

contract CallCounter {
    uint public count;
    function incrementCounter(address _counter) external {
        ICounter(_counter).increment();
        count = ICounter(_counter).count();
    }
}
