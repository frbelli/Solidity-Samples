pragma solidity ^0.5.1;

contract FundTransfer {
  function Fundtransfer(address payable _address, uint amount) public {
    //Try argument (0x14723a09acff6d2a60dcdf7aa4aff308fddc160c,100)
    address myAddress = address(this); //Contract address

    // Check balance of sender and receiver (contract address) and then transfer to contract address
    if(_address.balance < 10 && myAddress.balance >= 10) {
      _address.transfer(amount);
    }
  }
}
