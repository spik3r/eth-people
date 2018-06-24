pragma solidity ^0.4.17;
pragma experimental ABIEncoderV2;

contract Person {

    struct Person {
        string name;
        uint age;
    }

    Person[] public people;

    function createPerson(string _name, uint _age) public {
        people.push(Person(_name, _age));
    }

    function getPerson(uint id) public constant returns (string, uint) {
        Person person = people[id];
        return (person.name, person.age);
    }

    function getNumberOfPeople() public constant returns (uint) {
        return people.length;
    }
}