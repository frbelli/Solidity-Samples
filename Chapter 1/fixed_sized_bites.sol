pragma solidity ^0.5.1;
// test 4
// Contract return multiple sized bytes values.
contract BytesMultiReturner {
function getData() public pure
returns (uint8, uint8) {
  bytes8 a = "Solidity"; // Size of 8.
  bytes32 b = "Rendezvous with Practical Solidity Book" // Size of 32
    return (a.lenght, b.lenght); // Lenght will return unit value
  }
}
