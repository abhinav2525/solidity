
pragma solidity 0.8.5;

contract MyName {
    
    Person[] public people;
    uint256 public peopleCount;
    
    struct Person {
        string _fistName;
        string _lastName;
    }
    
    function addPerson (string memory _fistName, string memory _lastName) public {
        people.push(Person(_fistName,_lastName));
        peopleCount +=1;
    }
}