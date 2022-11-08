
// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.13;

contract Practice {
    string public name;
    function temp() public pure virtual {

    }
}

contract PracticeV2 {
    function temp() public pure virtual {

    }
}

contract PracticeV3 is Practice, PracticeV2 {
    constructor() {
        name = "james";
    }

    function temp() public pure override(Practice, PracticeV2) {

    }
}

interface something {
    function henry() external ;

}


contract Payable {
    address payable public owner;
    constructor() payable {
        owner = payable(msg.sender);
    }
}

contract Event {
    event Data(string indexed data, address addr);
    PracticeV3 practiceV3 = new PracticeV3();

    error valueChange(string data);

    function testEvent() external {
        emit Data("msg.data", address(msg.sender));

        try practiceV3.temp() {

        } catch Error(string memory reason) {
            revert valueChange(reason);
        }
    }
}

library ArrayLib {
    function findIndex(uint[] storage arr, uint _val) internal view returns(uint x) {
        for(uint i = 0; i < arr.length; i++) {
            if(arr[i] == _val) {
                return i;
            }
        }
        revert ("Not Found");
    }
}

contract Library {
    using ArrayLib for uint[];
    uint[] public arr = [3,5,2,7,8,1];

    function find(uint _val) public view returns(uint) {
        // return ArrayLib.findIndex(arr, _val);
        return arr.findIndex(_val);
    }
}

interface IRC20 {
    function transfer(address, uint) external;
}

contract Token {
    function transfer(address, uint) external pure returns(string memory) {
        return "HGello World";
    } 
}

contract AbiENcode {
    function test(address _contract, bytes calldata data) external {
        (bool ok, ) = _contract.call(data);
        require(ok, "call Failed");
    }

    function encodeCall(address _address, uint _amount) external pure returns(bytes memory) {
        // return abi.encodeWithSignature("transfer(address,uint256)", _address, _amount);
        // return abi.encodeWithSelector(IRC20.transfer.selector, _address, _amount);
        // return abi.encodeCall(IRC20.transfer, (_address, _amount));
        return abi.encode(_address, _amount);
    }

    function decode(bytes calldata data) external pure returns(address _addr, uint _amount) {
        (_addr, _amount) = abi.decode(data, (address, uint));
    }
}