pragma solidity 0.8.5;

contract MyContract {
    
    
    uint256 public peopleCount = 0;
    mapping(uint => Person) public people;
    
    uint256 openingTime = 1623815570;
    
    modifier onlyWhileOpen() { // function modifier are used to modify the behaviour of the function or  add a prerequisite to function
        require(block.timestamp >= openingTime);
        _;                //definition of the modifier, it is a rule that a modifier should have this special symbol
    }
    
    
    
    struct Person {
        uint _id;
        string _fistName;
        string _lastName;
    }
    
    function addPerson (string memory _fistName, string memory _lastName) public onlyWhileOpen{
        
        incrementCount();
        people[peopleCount] = Person(peopleCount, _fistName, _lastName);
        
       
    }
    
    function incrementCount() internal {
        peopleCount +=1;
    }
    
    
}
