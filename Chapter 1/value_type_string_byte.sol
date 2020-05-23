pragma  solidity ^0.5.1;

contract StringLessthen32CharacterToByte32 {
  // Conversion of string less than 32 characters long to bytes32
  function toBytes32(string memory _string) public pure
  returns (bytes32) {
    // Try argument ("Rendezvous with Practical Solidity")
    // Pure means we are neither accessing state nor changing it
    // Make sure string should be of less than 32 characters
    require(bytes(_string).length <= 32);
    bytes32 _stringBytes;
    // Best way of conversion from string to bytes32
    assembly {
      // Load the memory pointer of string with an offset of 32
      // 32 passes over non-core data parts of string such a lenght of text
      _stringBytes := mload(add(_string,32))
    }
    return _stringBytes;
  }

}
