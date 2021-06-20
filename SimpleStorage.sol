pragma solidity ^0.8.5;

contract SimpleStorage{
    string public data = "MyData";
    
    function set (string memory _data) public{
        data = _data;
    }

    function get() view public returns(string memory){
        return data;
    }    
    
}