// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.7;


/* 
    Global variable are those variable which are avaible on global level of blockchain
    For eg - block.timestamp
             block.number

    blockhash(uint blockNumber) returns (bytes32)	Hash of a given block, works for only 256 most recent transactions excluding current blocks
    block.coinbase (address payable)	            Address of current blocks miner
    block.difficulty (uint)	                        The difficulty of the current block
    block.gaslimit (uint)	                        Gaslimit of the current block
    block.number (uint)	                            Block number of the current block
    block.timestamp (uint)	                        The timestamp of the current block as seconds since Unix epoch
    gasleft() returns (uint256)	                    Amount of gas left
    msg.data (bytes calldata)	                    Complete call data of block
    msg.sender (address payable)	                The sender of message i.e. current caller
    msg.sig (bytes4)	                            First four bytes of call data i.e. function identifier
    msg.value (uint)	                            Amount of Wei sent with a message
    now (uint)	                                    The timestamp of the current block
    gasleft()                                       returns (uint256) Amount of gas left
    tx.gasprice (uint)	                            Price of gas for the transaction
    tx.origin (address payable)	                    Transaction sender
*/
contract GloabalVarible {
    function globalVar() external view returns(address, uint, uint) {
        address sender = msg.sender;
        uint timestamp = block.timestamp;
        uint blockNum = block.number;
        return( sender, timestamp, blockNum);
    }

    function validateEther(uint _eth) private pure returns(bool) {
        return _eth == 1 ether;
    }

    function checkMinimumEther(uint _eth) public pure returns(bool) {
        return validateEther(_eth);
    }

    mapping(uint => mapping(uint => int)) public pices;

    function setMap(uint _uint, int _int) public {
        pices[_uint][_uint] = _int;
    }

    // Array PPrcatice
    uint[] public arr;

    function insert(uint _num) public {
        arr.push(_num);

        // copy arr
        uint[] memory temp = new uint[](5);

        temp[0] = 11;
    }

}