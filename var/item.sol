// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StructArrayExample {
    // Define a struct named Item
    struct Item {
        string name;
        uint256 quantity;
    }

    // Declare an array of Item structs
    Item[] public items;

    // Function to add an item to the array
    function addItem(string memory _name, uint256 _quantity) public {
        // Create a new instance of Item and add it to the array
        items.push(Item({
            name: _name,
            quantity: _quantity
        }));
    }

    // Function to get the details of an item at a specific index
    function getItemDetails(uint256 index) public view returns (string memory, uint256) {
        // Retrieve and return the details of the item at the specified index
        require(index < items.length, "Index out of bounds");
        return (items[index].name, items[index].quantity);
    }

    // Function to get the total number of items in the array
    function getItemsCount() public view returns (uint256) {
        // Return the length of the items array
        return items.length;
    }
}
