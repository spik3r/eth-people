pragma solidity ^0.4.17;

pragma experimental ABIEncoderV2;

contract Car {

    struct Car {
        string model;
        string make;
        uint horsePower;
    }

    Car[] public cars;

    function createCar(string _model, string _make, uint _horsePower) public {
        cars.push(Car(_model, _make, _horsePower));
    }

    function getCar(uint id) public constant returns (string, string, uint) {
        Car storage car = cars[id];
        return (car.model, car.make, car.horsePower);
    }

    function getNumberOfCars() public constant returns (uint) {
        return cars.length;
    }
}