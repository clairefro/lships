/**
 * @type import('hardhat/config').HardhatUserConfig
 */
require("dotenv").config();
require("@nomiclabs/hardhat-ethers");

const { ALCHEMY_API_URL, METAMASK_PRIVATE_KEY, DEFAULT_NETWORK } = process.env;

module.exports = {
  solidity: "0.8.0",
  defaultNetwork: DEFAULT_NETWORK || "ropsten",
  networks: {
    hardhat: {},
    ropsten: {
      url: ALCHEMY_API_URL,
      accounts: [`0x${METAMASK_PRIVATE_KEY}`],
    },
  },
};
