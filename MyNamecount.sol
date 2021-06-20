pragma solidity 0.8.5;

contract MyNamecount {
    
    
    uint256 public peopleCount = 0;
    mapping(uint => Person) public people;
    
    struct Person {
        uint _id;
        string _fistName;
        string _lastName;
    }
    
    function addPerson (string memory _fistName, string memory _lastName) public {
        
        peopleCount +=1;
        people[peopleCount] = Person(peopleCount, _fistName, _lastName);
        //people.push(Person(_fistName,_lastName));
       
    }
}