/* @INFO - Top level declaration in solidity file. */
pragma solidity ^0.4.23; /* To indicate that this source code is not intended to be compiled with a compiler earlier than 
version 0.4.23 and with 0.5.0 and higher (this second condition is added by using ^). */
pragma solidity >=0.4.23 < 0.6.0; /* To indicate that this source code will work with compiler version 0.4.23 and above 
but not work if version 0.6.0 and above. */
pragma solidity 0.4.23; //To lock the contract compiler for 0.4.23.

//Will import all symbols from “otherfile” into the current global scope. 
import “otherfile.sol”; 
//Creates a new global symbol customSymbolName whose members are all symbols from “ otherfile.sol”. 
import * as symbolName from “otherfile.sol”; 
//Creates new global symbols alias and symbol2 which reference symbol1 and symbal2 from “otherfile.sol” respectively. 
import {symbol1 as alias, symbol2} from “otherfile.sol” 
//Same as import * as symbolName from “otherfile.sol”; 
import “otherfile.sol” as symbolName; 

//Other import examples.

//Importing contract from other folder path. 
import “other_folder/another_test.sol”; 
//Import from npm package folder 
import “openzeppelin-solidity/contracts/ownership/Ownable.sol”; 
//Importing from relevant sources
import “https://github.com/OpenZeppelin/openzeppelin-solidity/blob/master/contracts/ownership/Ownable.sol”; 
import “git://github.com/<path>”; 
import “github.com/<path>”; 

//Example code to understand use of Import statement. 

//npm install openzeppelin-solidity. 
pragma solidity ^0.4.23; 
import “openzeppelin-solidity/contracts/token/ERC20/ERC20.sol”; 
import “openzeppelin-solidity/contracts/token/ERC20/ERC20Detailed.sol”; 
contract ExampleToken is ERC20, ERC20Detailed

{}; 
//This is single line comment. /*This is multi line comment */
 
/* @INFO - Layout Inside Contract */
pragma solidity ^0.5.1; 
//Ordering inside contract: 
contract layoutSetter { 
    /* State Variables 
    Events 
    Function 
    Modifiers 
    Value and Reference Types : Struct, arrays or 
    Enum 
    Constructor 
    Fallback function (if exists) 
    External 
    Public 
    Internal
    Private 
    Default Fallback Functions 
    */ 
    // State Variables 
    address public stateVariable1; 
    uint public stateVariable2; 
    address owner; address mortal; 
    // Events 
    event Event1(address param1, uint param2); 
    event Event2(address param1); 
    event Event3(); 
    // Function Modifiers 
    modifier onlyOwner { 
        require(msg.sender == owner); 
        _; 
        } 
    modifier onlyIfMortalModifier() { 
        require(msg.sender == mortal); 
        _;
} 

// Value and Reference Types : Struct, arrays or Enum if any here 
enum enum1 { val1, val2, val3 } 
struct Person { 
    uint name; 
    uint addr; 
    address location; 
    } 
    mapping (address => uint) balances; 

// Define constructor here 
constructor() public { 
// Initialize state variables here 
} 
// External functions 
function externalFun() external pure 
returns(string memory)
{ return “External function get called”; 
}

// External functions that are constant 
function externalViewFun() external pure 
returns(string memory){ 
    return “External constant function get called”; 
    } 
// Public functions 
function publicViewConstantFun() public pure 
returns(string memory){ 
    return “Public function get called”; 
} 

// Internal functions 
function internalFun() internal pure 
returns(string memory){ 
    return “Internal function get called”; 
    } 

// Private functions 
function a() private pure returns(string memory){ 
    return “private function get called”;
}

//Default or fallback function 
function() external{ 
    revert(); 
//Transaction should revert to initial state
    } 
}



