// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;

//importinf simple Storage contacr
import "./SimpleStorage.sol";

contract StorageFactory{

//storing all the functions of the Simple Storage Contract Into An Array
  SimpleStorage[] public simpleStorageArray;

  //function was to call SimpleStorage
  function createSimpleStorageContract() public{
      SimpleStorage simpleStorage=new SimpleStorage();
      simpleStorageArray.push(simpleStorage);

  }


  //caling the functions of the Simple Store from Sotrage Factory Contract

  //calling store function of the simple storage
 function storefromfactory(uint256 index,uint256 number) public{
   SimpleStorage(address(simpleStorageArray[index])).store(number);
 }

   
//calling the retrive function the simple storage
function retrievefromfactory(uint256 index) public view returns (uint256){
   return SimpleStorage(address(simpleStorageArray[index])).retrieve();
 }



}
