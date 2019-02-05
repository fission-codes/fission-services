var BasicEnglishLocalization = artifacts.require("BasicEnglishLocalization.sol");

contract("BasicEnglishLocalizationTests", async (accounts) => {
  let basicEnglishLocalizationInstance;

  before("setup", async () => {
    basicEnglishLocalizationInstance = await BasicEnglishLocalization.deployed();
  });

  it("gets the correct string for a given code", async () => {
    const result = await basicEnglishLocalizationInstance.textFor(web3.utils.toHex("0x00"));

    expect(result).to.eql("Failure");
  });
});
