var Person = artifacts.require("Person");
var Car = artifacts.require("Car");

module.exports = function(deployer) {
    deployer.deploy(Person);
    deployer.deploy(Car);
};