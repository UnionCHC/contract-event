var MyEvents = artifacts.require("./MyEvents.sol");

module.exports = function(deployer) {
  deployer.deploy(MyEvents);
};
