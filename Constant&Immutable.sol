// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.7;

contract ConstantImmutable {
    uint public constant var1 = 22;
    uint public immutable var2;

    constructor(uint _var2) {
        var2 = _var2;
    }

    modifier checkAddress(address _address) {
        require(_address != address(0), "Address is not valid");
        _;
    }

    function validateAddress(address _address) public view checkAddress(_address) returns(address){
        return msg.sender;
    }
} 