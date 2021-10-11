pragma solidity 0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/access/AccessControl.sol";

contract LShips is ERC721, AccessControl {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    struct Character {
        bytes32 name; // CHANGE TYPE TO A STRING TYPE?
    }

    struct Ship {
        uint charId1;
        uint charId2;
        bytes32 portmanteau; // CHANGE TYPE TO A STRING TYPE?
    }

    uint lastCharId = 1;
    uint lastShipId = 1;


    mapping(uint => Character) public characters;
    uint[] public characterIds;

    mapping(uint => Ship) public ships;
    uint[] public shipIds;



    constructor(string memory name, string memory symbol)
        ERC721("LShips", "LIPS")
    {
        _setupRole(DEFAULT_ADMIN_ROLE, msg.sender);
        // TODO: Build initial Ships
    }

    function addCharacter(bytes32 name) {
        var _id = lastCharId;
        var character = characters[_id];

        character.name = name;

        characterIds.push(_id); 
        lastCharId++;
    }

    function getCharacterIds() view public returns (uint[]) {
        return characterIds;
    }

    function addShip(uint char1Id, uint char2Id, bytes32 portmanteau) {
        // TODO check that char1 and char2 exist
        var _id = lastShipId;
        var ship = ships[_id];

        ship.char1Id = char1Id;
        ship.char2Id = char2Id;
        ship.portmanteau = portmanteau;

        shipIds.push(_id); 
        lastShipId++;
    }

    function getShipIds() view public returns (uint[]) {
        return shipIds;
    }

    // `supportsInterface` is defined in both the ERC721 and AccessControl contracts. Including an explicit override here
     function supportsInterface(bytes4 interfaceId) public view virtual override(ERC721, AccessControl) returns (bool) {
        return super.supportsInterface(interfaceId);
    }
}