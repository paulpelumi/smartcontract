// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.15;

/**
   * @title ContractName
   * @dev ContractDescription
   * @custom:dev-run-script file_path
   */
contract PaulWallet {
    address payable public owner;

    constructor() {
        owner = payable(msg.sender);
    }

    receive() external payable {}

    function withdraw(uint _amount) external {
        require(msg.sender == owner, "caller is owner");
        payable(msg.sender).transfer(_amount);
    }

    function getBalance() external view returns (uint) {
        return address(this).balance;
    }
}

