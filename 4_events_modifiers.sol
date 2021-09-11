pragma solidity ^0.7.0;

contract EventsModifiers {
    //using _varName seems like a standard if its not a state variable
    event logUser(address indexed _user, uint256 _amount);

    modifier onlyOneEther() {
        require(msg.value == 1 ether, "only 1 ether required!!!");
        _;
    }

    function sendOneEther() public payable onlyOneEther {
        emit logUser(msg.sender, msg.value); // logs info
    }
}
