pragma solidity ^0.7.0;

address owner;

constructor() {
  owner = msg.sender; // stores the contract addy that deployed the contract
}

function changeOwner(address newOwner) public {
  require(msg.sender == owner, "only owner can do this!!!");
  owner = newOwner;
}