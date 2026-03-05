// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/**
 * @title Exercises
 * @dev Practice: combine concepts — counter with owner and cap
 */
contract Exercises {
    uint256 public count;
    uint256 public constant CAP = 100;
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    function increment() external {
        require(msg.sender == owner, "Not owner");
        require(count < CAP, "Reached cap");
        count++;
    }

    function reset() external {
        require(msg.sender == owner, "Not owner");
        count = 0;
    }
}
