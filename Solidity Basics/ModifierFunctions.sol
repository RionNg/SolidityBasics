// SPDX-License-Identifier: MIT

pragma solidity ^0.8.22;

contract MyContract {
    uint256 public peopleCount = 0;
    mapping(uint256 => Person) public people;
    // mapping(key => value)
    
    address owner;

    modifier onlyOwner() {
        require(msg.sender == owner, "Not owner");
        _;
    }

    struct Person {
        uint256 _id;
        string _firstName;
        string _lastName;
    }

    constructor() {
        owner = msg.sender;
    }

    function addPerson(
        string memory _firstName,
        string memory _lastName
    ) 
        public
        onlyOwner
    {
        incrementCount();
        people[peopleCount] = Person(peopleCount, _firstName, _lastName);
    }

    function incrementCount() internal {
            peopleCount += 1;
    }

}