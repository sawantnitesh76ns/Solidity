// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.7;

contract valuetype {
    // String Data type
    string public str = "Hello Worl";

    // Integer Value types
    /*
        int8
        int16
        int32
        int  == int256 
    */
    int public int3ww2 = 33;

    // Unsign integer
    /*
        Just like integer value type
        But the value canrange between 0 - 2^256 - 1
        You cannot store NEGATIVE value in uint 
    */
    uint public uintvalue = 22;

    // Boolean data type
    bool public boolValue = true;

    // Address ----> Store addresses of contract and users
    // It is 256 bit
    address public addressValue = 0xC12df560F9b3c6305C06dfA8bDC331BbE2DED860;

    // Byte data type 
    // 1 to 32 bit 
    bytes32 public byteValue = "4";

    // Enum - Store user define data type
    enum enumData {
        BUILD,
        TEST,
        DEPLOYE
    }

    function Enum() public pure returns(enumData) {
        return enumData.BUILD;
    }


}