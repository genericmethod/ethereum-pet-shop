pragma solidity ^0.4.17;

contract Adoption {

    //an array of ethereum addresses storing the list of adopter addresses
    address[16] public adopters; //public variables automatically come with getter methods

    // adopt a pet by specifying the id of the pet to be adopted
    function adopt(uint petId) public returns (uint) {

      //check that the petId is within range - 16 pets in total)
      require(petId >= 0 && petId <= 15);

      //assign the address of the person or smart contract that called this function.
      adopters[petId] = msg.sender;

      return petId;
    }

    // Returns all the adopters
    function getAdopters() public view returns (address[16]) {
      return adopters;
    }
}