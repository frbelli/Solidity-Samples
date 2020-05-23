pragma  solidity ^0.5.1;

contract AddressGetter {
  function getCallerAddress() public view
  returns (address caller, address contract1) {
    // No arguments needed here
    caller = msg.sender;
    // Get caller address
    contract1 = address(this);
    // Retrieve contract address
    return (caller,contract1);
  }
}
