// SPDX-License-Identifier: MIT

pragma solidity ^0.8.26;

contract Messenger {
    string public message;
    address public owner;
    uint public changeCounter;

    constructor() {
        owner = msg.sender; //address of this user
    }

    function sendMessage(string memory _newMessage) public {

        if(owner == msg.sender){    // deployer can only send msg
            message = _newMessage;
            changeCounter++;
        }
    }

}