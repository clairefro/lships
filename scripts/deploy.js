async function main() {
  const Lips = await ethers.getContractFactory("Lips");

  // Start deployment, returning a promise that resolves to a contract object
  const lips = await Lips.deploy();
  console.log("Contract deployed to address:", lips.address);
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
