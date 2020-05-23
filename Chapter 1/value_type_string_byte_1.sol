pragma  solidity ^0.5.1;

contract GasUsesfromBytesAndStrings {
  string constant _string = "Solidity Cook Book";
  /* For bytes32 constant _bytes keep string character less than 32 else you would get a compilation error */
  bytes32 constant _bytes = 'Solidity Cook Book';

  function getString() public pure
  returns(string memory) {
    return _string;
  }

  function getBytes() public pure
  returns(bytes32) {
    return _bytes;
  }
}
