// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

import {ERC20} from "./ERC20.sol";

contract ERC20Julien is ERC20{
    constructor(string memory name, string memory symbol) ERC20(name, symbol) {
       uint256 value = 10000;
         _mint(msg.sender, value);
    }
}


// trouver la methode qui permet de creer des jetons -> mint
// trouver le moyen d'appeler le constructeur de la classe mere -> import + function_mint 
// appeler la methode trouvee au premier pour decider d'un total supply, ce totalsupply doit 
// etre trasnfere sur le compte du owner et/ou msg.sender 