pragma solidity ^0.7.0;

contract MappingStructs {
    // sets a static variable called user of address type
    address user = 0x293b9445CFB70eBc25245F3Bf258c587996DF974;

    // create a Person struct
    struct Person {
        string firstName;
        string lastName;
        uint256 age;
    }
    Person public persona; // creates a persona variable of Person type

    mapping(address => persona) students; // maps an address to a persona

    function createPerson(
        string _firstName,
        string _lastName,
        uint256 _age
    ) public {
        person = Person({
            firstName: _firstName,
            lastName: _lastName,
            age: _age
        });
        students[user] = person;
    } // creates a person of the Person type and assigns it to the user var
}
