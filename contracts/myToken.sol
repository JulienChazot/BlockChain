// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;


// Déclare un contrat myToken
contract myToken {
    string public name = "MyToken";
    string public symbol = "TKN";

    uint256 public totalSupply = 1000000;

    address public owner;

    mapping(address => uint256) public balances;

    event Transfer(address indexed from, address indexed to, uint256 value); // Typo: "Transfer" au lieu de "Tranfer"

    constructor() {
        balances[msg.sender] = totalSupply;
        owner = msg.sender;
    }

    function transfer(address to, uint256 value) external { // Nom de la fonction corrigé: "transfer" au lieu de "Tranfer"
        require(balances[msg.sender] >= value, "Tokens disponibles insuffisants");

        balances[msg.sender] -= value;
        balances[to] += value;

        emit Transfer(msg.sender, to, value);
    }

    function balanceOf(address account) external view returns (uint256) {
        return balances[account]; // Correction: Utilisation de crochets [] au lieu de parenthèses ()
    }
}
