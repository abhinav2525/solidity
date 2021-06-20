pragma solidity ^0.8.5;


contract HelloWorld{
    function hello() public pure returns(string memory){
        return "Hello abhinav";
    }
}

//Pure functions ensure that they not read or modify the statesol