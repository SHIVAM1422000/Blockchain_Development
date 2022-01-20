// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;
//defing the version of the solidity

//contract is like class in java
contract SimpleStorage{

   uint256 public favouriteNumber=5;

  //to add objects like in java
   struct People{
         uint256 number;
         string name;
   } 

//declaring an dynamic array in solidity
    People[] public people;


//adding map
mapping(string => uint256) public map;


//since string is like array of character therefore we store it in memory
    function addPerson(string memory _name,uint256 _number) public {

      //     //method 1
      //     people.push(People({number:_number,name:_name}));

          //method 2
          people.push(People(_number,_name));

          //adding map value
          map[_name]=_number;


    }
 
    


   //functtions in solidity
   function store(uint256 _favouriteNumber) public {
         favouriteNumber=_favouriteNumber*2;
   }

}