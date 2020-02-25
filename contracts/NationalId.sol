pragma solidity >=0.4.21 <0.7.0;
/*
   This program is about national identification using blockchain.

   Algorithm
   ==========
   create a contract of NationalId
   Declare the structure of citizen's details(Name, telephone number)
   mapping the details as a transaction
   Declare a variable that count the number of person saved
   Declare a contractor to save the personal details
   Add a function to save name and telephone number
   count the number of person. 
*/
contract NationalId 
{
	
	// model a personal
	struct Person
	    {

        	uint id;
			string name;
			string age;
	    }
	    // store the activity done 
	    //mapping(address => bool) public informations;
	    //store Person
	    //Fetch person
	    mapping(uint => Person) public persons;

        //Store Personals Count
        uint public personsCount;
    // contruct to save the data
	constructor () public {
	  addPerson("Patrick DUSHIMIMANA","078786690");
	  addPerson("Andrew Musoke","078844789");
	} 

	function addPerson ( string memory _name,string memory _age) private {
	personsCount ++;
    persons[personsCount] = Person(personsCount, _name, _age);
	}
	
}