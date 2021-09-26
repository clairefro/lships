# The L Ships

Collect and trade your favorite Ships

## Development

### Getting started

`yarn install`

### Testing

`yarn test`

### Compiling

`yarn compile`

## Planning

Should start with base characters and ships.

ADMIN can add new Characters
ADMIN can add new Ships to the market
ADMIN can change a Ship's status from fanon to canon

BUYER can buy a Ship
BUYER can sell a Ship to another buyer

## Ships

c1Id
c2Id
portmanteau
ownerAddress

## Interface

`getAllCharacters()`

`getAllShips()`

`mintShip(uint c1Id, uint c2Id, string portmanteau, bool isCanon, address ?ownerAddress)`

- `MINTER_ROLE` only

`addCharacter(string name)`
