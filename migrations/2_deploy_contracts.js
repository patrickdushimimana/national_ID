/*
This codes help to migrate our National Id.

	Algorithm
	=========

 Declare variable to get the contract and assign the contract
 call the function module to deploy our contract.

*/


var NationalId = artifacts.require('NationalId.sol');

 // help to deploy out contract
module.exports = function(deployer){
	deployer.deploy(NationalId);
}