// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Bank {
    int private bal;

    constructor() {
        bal = 1;
    }

    function getBalance() public view returns (int) {
        return bal;
    }

    function withdraw(int amt) public {
        // Check if the withdrawal amount is greater than the balance
        if (amt > bal) {
            revert("Insufficient funds");
        }

        bal = bal - amt;
    }

    function deposit(int amt) public {
        // Check if the deposit amount is non-negative
        if (amt < 0) {
            revert("Deposit amount must be non-negative");
        }

        bal = bal + amt;
    }
}
