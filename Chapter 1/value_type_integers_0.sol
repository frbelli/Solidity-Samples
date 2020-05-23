pragma solidity ^0.5.1;

contract InsecureIntegerFlow {
  mapping (address => uint256) public balanceOf;

  // Vulnerable piece of code
  function transfer(address _to, uint256 _value) public {

  //Try with arguments (0xca35b7d915458ef540ade6068dfe2f44e8fa733c,200) on remix.
  balanceOf[msg.sender] = 100;
  //Set balance of code executer address to 100.

  /* balances[msg.sender] – _value >= 0 condition is always satisfied because uint minus uint operation always returns uint
  and uint is always greater or equal to 0. We have set sender address balance to 100.
  Check transfer occurs only when sender has sufficient balance to send money i.e balanceOf[msg.sender] - _value >= 0.
  Due to integer overflow that we explained above, condition balanceOf[msg.sender] - _value >= 0 is always true
  thus sender can transfer any amount to destination address.*/

  require(balanceOf[msg.sender] - _value >= 0);

  //This line of code can create disaster or havoc.
  /* Add and subtract new balances */
  balanceOf[msg.sender] -= _value; balanceOf[_to] += _value;
  }
}
