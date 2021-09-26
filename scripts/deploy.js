async function main() {
  const LShips = await ethers.getContractFactory("LShips");

  // Start deployment, returning a promise that resolves to a contract object
  const lShips = await LShips.deploy();
  console.log("Contract deployed to address:", lShips.address);
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
