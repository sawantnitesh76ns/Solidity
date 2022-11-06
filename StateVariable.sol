// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.7;

contract StateVariable {
    // State variable are the variable who store data on blockchaun 
    // Basically you can define it as Global varible

    uint public stateVar = 22;


    function localVarDemo() external pure {
        // Local variable will get erase out when the function got finishe
        uint localVar = 11;
    }
}