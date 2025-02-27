// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;


contract lec02{

        address payable owner = payable(msg.sender);
        uint public contractBalance = address(this).balance;

        function senderEther() public payable {
            require(msg.value >= 1 ether,"No enough money");
            contractBalance = address(this).balance;
            payable(owner).transfer(contractBalance);
            // msg.value is the attach value to the contract
            // msg.sender is the triggering value
            // addressthis.balance is the current account balance

            // tx.owner
        }
}