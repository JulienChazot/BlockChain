const { buildModule } = require("@nomicfoundation/hardhat-ignition/modules");

const ModuleERC20Julien = buildModule("ModuleERC20Julien", (m) => {

  const name = m.getParameter("name", JulienERC20);
  const symbol = m.getParameter("symbol", JUL);
  const ERC20Julien = m.contract("ERC20Julien");

  return { myToken };
});

module.exports = ModuleERC20Julien;

// Pour indiquer a Hardhat de se connecter
// a un reseau specifique, il faut utiliser la commande