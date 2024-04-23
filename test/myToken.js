const {expect} = require("chai");

import "myToken.sol";

describe("On s'apprete a tester le deploiement du token", function() {
    if("should send the total to the owner", async function() {
        const[owner] = await ethers.getSigners();

        const myToken = await ethers.deployContract("myToken");

        const ownerBalance = await myToken BalanceOf(owner.address);
    });
});