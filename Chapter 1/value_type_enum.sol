pragma solidity ^0.5.1;

// Create cars based on customer customization and default options

contract CustomerCustomizationForCar {
  // Enum assignement
    enum WheelsChoices {
        Alloy, Steel
    } // Available Wheels options

    enum ColorChoices {
        red, blue, orange, gray, white, yellow
    } // Available color options

    enum RoofChoices {
        Hardtops, Sunroofs, Ttops, Targa, Vinyl
    } // Availiable roof options

    WheelsChoices constant defaultWheel = WheelsChoices.Steel; // Default car Wheels

    ColorChoices constant defaultColor = ColorChoices.red; // Default color

    RoofChoices constant defaultRoof = RoofChoices.Hardtops; // Default car roof

  // Create cars using struct. We will see Struct in subsequent sections
    struct CustomizedCar {

        string vin; // Car identification number
        WheelsChoices wheel; //Wheel chosen
        ColorChoices color; // Colour chosen
        RoofChoices roof; // Roof type chosen
    }

    mapping(string => CustomizedCar) customerCarMapping; // Keep mapping of cars
  // Create car with customer selected options

    function createCustomizedCarForCustomer(string memory vin) public {
    // Try any unique string as argument i.e. ("111")
        customerCarMapping[vin] = CustomizedCar(vin,WheelsChoices.Steel,ColorChoices.yellow,RoofChoices.Vinyl);
    }
  // Create car with default Available options

    function createDefaultCarForCustomer(string memory vin) public {
    // Try any unique string as argument i.e. ("222")
        customerCarMapping[vin] = CustomizedCar(vin,defaultWheel,defaultColor,defaultRoof);
    }

  // Retrieve car information
    function getCar(string memory vin) public

        view returns(uint256,uint256,uint256) {
    // Fetch using unique string i.e. ("111") or ("222"). Enum is convertible to integer
        return (uint256(customerCarMapping[vin].wheel), uint256(customerCarMapping[vin].color),
        uint256(customerCarMapping[vin].roof));
    }
}
