// we commence a contract by telling solidity what compiler level to use
// pragma solidity ^0.7.0 => sets the lowest compiler to use
// pragma solidity >=0.7.0 <0.9.0 => gives a range of compilers to use
pragma solidity ^0.7.0;

contract Types {
  string message = "Hello World!"; // a string variable
  uint count = 20; // an uint variable
  int count = -20; // an int variable
  bool isLoggedIn = false; // a boolean variable
  string[] fruits = ["apple", "banana", "coconut"]; // an array of strings
  uint[] fibbo = [1, 2, 3, 5, 8, 13, 21, 34]; // an array of integers
  enum Statuses {occupied, vacant}; // an enum of choices, similar to bool
}