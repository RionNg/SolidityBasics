// SPDX-License-Identifier: MIT

pragma solidity ^0.8.22;

contract MyContract {

    mapping(address => uint256) public balances;
    address payable wallet;

    constructor(address payable _wallet) {
        wallet = _wallet;
    }

    function buyToken() public payable {
        //buy a token
        balances[msg.sender] += 1;
        //send ether to the wallet
        wallet.transfer(msg.value);
    }

}