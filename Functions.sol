// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.7;

contract ConstructorDemo {
    
    /* 
        external               - These funtion will be availabel for external contract also
        pure                   - Function is read only
        returns(<Return Type>) - These define what will be the return type of function 
                                 You can also return multiple return type
    */
    function add(uint _val1, uint _val2) external pure returns(uint, uint) {
        return (_val1 + _val2 , _val2 - _val1);
    }

}