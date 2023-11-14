// SPDX-License-Identifier: MIT

pragma solidity ^0.8.22;

contract MyContract {
    enum State { Waiting, Ready, Active }
    // enum State { Waiting = 0, Ready = 1, Active = 2}
    State public state;

    constructor() {
        state = State.Waiting;
    }

    function activate() public {
        state = State.Active;
    }

    function isActive() public view returns(bool) {
        return state == State.Active;
    }
}
