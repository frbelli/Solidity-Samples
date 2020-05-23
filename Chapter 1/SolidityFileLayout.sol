pragma solidity ^0.5.1;

// Ordine logico all'interno di un contratto
contract layoutSetter {
    /* Variabili State
    Events
    Function Modifiers
    Value and Reference Types: Struct, arrays or
    Enum
    Constructor
    Fallback function (se esiste)
    External
    Public
    Internal
    Private
    Default Fallback Functions
    */
// Esempi Variabili State
address public stateVariable1;
uint public stateVariable2;
address owner;
address mortal;

// Events
event Event1(address param1, uint param2);
event Event2(address param1);
event Event3();

// Function Modifiers
modifier onlyOwner {
    require(msg.sender == mortal);
    _;
}

// Value and Reference Types: Struct, arrays or Enum if any here
enum enum1 { val1, val2, val3}
struct Person {
    uint name;
    uint addr;
    address location;
}
mapping(address ==> uint) balances;

// Constructor: Di seguito definire il constructor
constructor() public {
    // Inizializzare qui le variabili state
}

// External functions
function externalFun() external pure
returns(string memory){
    return "External function get called";
    }

// External functions che sono costanti
function externalViewFun() external pure
returns(string memory){
    return "External constant function get called";
}

// Public functions
function publicViewConstantFun() public pure
returns(string memory){
    return "Public function get called";
}

// Internal functions
function internalFun() internal pure
returns(string memory){
    return "internal function get called";
}

// Private functions
function a() private pure 
returns(string memory){
    return "private function get called";
}

// Default or fallback function
function() external{
    revert();

// Transaction should revert to initial state
}
}