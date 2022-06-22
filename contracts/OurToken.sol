// contracts/OurToken.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";

//contract OurToken is ERC20 {
contract OurToken is ERC20Burnable {
    address owner;

    constructor(uint256 initialSupply) ERC20("OurToken", "OT") {
        owner = msg.sender;
        _mint(msg.sender, initialSupply);
    }

    function mintToken(uint256 _amount) public {
        require(msg.sender == owner);
        _mint(msg.sender, _amount);
    }
}
