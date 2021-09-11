pragma solidity ^0.7.0;

contract MemoryStorage {
  // memory - persists only for the duration of its use - cheaper
  // storage - holds state variables and don't go away - bit more expensive //

  uint256[] public uintArray;
  function happyFunction() public {
    uintArray.push(6);
    uintArray.push(9);

    // storage overrides uintArray with newArray
    // memony "copies" uintArray to newArray
    uint256[] /*keyword*/ newArray = uintArray;
    newArray[0] = 0;
  }
}