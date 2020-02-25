var NationalId = artifacts.require("./NationalId.sol");

contract("NationalId", function(accounts) {

if(" initializes with two persons", function() {
  return NationalId.deployed().then(function(instance) {
    return instance.personsCount();
      }).then(function(count) {
       assert.equal(count, 3);
   });
  });
});