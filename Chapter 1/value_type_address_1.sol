pragma solidity ^0.5.1;

contract FundTransfer {
  function Fundtransfer(address payable _address, uint amount) public {
    //Try argument (0x14723a09acff6d2a60dcdf7aa4aff308fddc160c,100)
    _address.transfer(amount);
    // Use of transfer is preferred because it throws an exception and stops the execution
  }

  function FundSender(address payable _address, uint amount) public returns(bool) {
    // Try argument (0x14723a09acff6d2a60dcdf7aa4aff308fddc160c,100)
    _address.send(amount);
    // Send returns false if error is detected

  }
}
