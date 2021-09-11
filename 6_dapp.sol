pragma solidity ^0.7.0;

contract Dapp {
    // accounts map with addresses that hold an amount
    mapping(address => uint256) public accounts;

    // ensure user has enough funds
    modifier hasFunds(uint256 _amount) {
        require(_amount <= accounts[msg.sender], "lol, check your balanze pls");
        _;
    }

    function deposit() public payable {
        accounts[msg.sender] += msg.value;
    }

    // only works if account has deposited to the contract
    function withdraw(uint256 _amount) public hasFunds(_amount) {
        payable(msg.sender).transfer(_amount);
    }

    //checks bal available in the contract
    function checkAssets() public view returns (uint256) {
        return address(this).balance;
    }
}
/* accounts[msg.sender] returns the uint value of the address
remember that maps are key value pairs, similar to JSON objects
so doing this is as telling solidity to return the the uint value
that matches the address (or msg.sender)
*/
