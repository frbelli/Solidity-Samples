pragma solidity ^0.5.1;

// contract name
contract SchoolTrip {
// Boolean variable will initiate with initial default value as fase
  bool public tripDecider;
// Pure Keyword - function will not alter the storage and even not read storage state
// Internal Keyword - Only accessible to this contract and contracts deriving from this contracts

  function tripAnalyzer(uint256 studentCount, bool principleApproval, bool legalApproval)
  internal pure returns(bool) {

/* Trip decider logic
Operators && and || adhere to the common short-circuit rules.
i.e. if in an expression a(x)||b(y) the expression a(x) evaluates to true, the b(y) expression will not be evaluated!! */

    return (studentCount >= 100 && (principleApproval||legalApproval));
  }

  function checkTripStatus() public
    returns(bool) {
// Other logical snippet to be added adhere

    return tripDecider = tripAnalyzer(100,true,false);
    }

}
