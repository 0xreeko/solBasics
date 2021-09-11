pragma solidity ^0.7.0;

contract Functions {
    address public owner;

    constructor() {
        owner = msg.sender; // stores the contract addy that deployed the contract
    }

    function changeOwner(address newOwner) public {
        require(msg.sender == owner, "only owner can do this!!!");
        owner = newOwner;
    }
}

contract Constructors {
    constructor() payable {
        // this allows the contract to receive Ξ into it.
    }

    function checkBalanze() public view returns (uint256) {
        return (address(this).balance);
    }
    // view - sets the function to read-only
    // pure - abstracts the function from state and variables
}
