pragma solidity 0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/access/AccessControl.sol";

contract LShips is ERC721, AccessControl {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;
    constructor(string memory name, string memory symbol)
        ERC721("LShips", "LIPS")
    {
        _setupRole(DEFAULT_ADMIN_ROLE, msg.sender);
        // TODO: Build initial Ships
    }

    // `supportsInterface` is defined in both the ERC721 and AccessControl contracts. Including an explicit override here
     function supportsInterface(bytes4 interfaceId) public view virtual override(ERC721, AccessControl) returns (bool) {
        return super.supportsInterface(interfaceId);
    }
}