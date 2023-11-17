// SPDX-License-Identifier: MIT

pragma solidity ^0.8.22;

contract MyContract {
    uint256 public peopleCount = 0;
    mapping(uint256 => Person) public people;
    // mapping(key => value)
    
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
    {
        peopleCount += 1;
        people[peopleCount] = Person(peopleCount, _firstName, _lastName);
    }
}
