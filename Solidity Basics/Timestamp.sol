// SPDX-License-Identifier: MIT

pragma solidity ^0.8.22;

contract MyContract {
    uint256 public peopleCount = 0;
    mapping(uint256 => Person) public people;
    // mapping(key => value)

    uint256 openingTime = 1699940335;
    // https://www.epochconverter.com

    modifier onlyWhileOpen() {
        require(block.timestamp >= openingTime);
        _;
    }

    struct Person {
        uint256 _id;
        string _firstName;
        string _lastName;
    }

    function addPerson(
        string memory _firstName,
        string memory _lastName
    ) 
        public
        onlyWhileOpen
    {
        incrementCount();
        people[peopleCount] = Person(peopleCount, _firstName, _lastName);
    }

    function incrementCount() internal {
            peopleCount += 1;
    }

}