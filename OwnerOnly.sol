// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract OwnerOnly {
    address public owner;

    // Set the deployer as the owner
    constructor() {
        owner = msg.sender;
    }

    // Modifier to restrict access to only owner
    modifier onlyOwner() {
        require(msg.sender == owner, "You are not the owner");
        _;
    }

    // Example function only the owner can call
    function secretFunction() public onlyOwner view returns (string memory) {
        return "This function can only be called by the contract owner.";
    }
}