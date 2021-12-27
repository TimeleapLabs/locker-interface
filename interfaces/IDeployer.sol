//SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.11;

/**
 * @dev This contract is used for deploying the Locker contract,
 * charging the users, and returning the contract address to the user.
 */
interface IDeployer {
    /**
     * @dev Returns the deployer version.
     */
    function getVersion() external pure returns (uint256);

    event PriceChanged(uint256 price);

    /**
     * @dev Get the price of locker contract creation.
     */
    function getPrice() external view returns (uint256);

    event PriceInKenshiChanged(uint256 price);

    /**
     * @dev Get the price of locker contract creation.
     */
    function getPriceInKenshi() external view returns (uint256);

    /**
     * @dev Checks if an address is a Kenshi locker created by this deployer.
     */
    function isKenshiLocker(address addr) external view returns (bool);

    event LockerCreated(address addr);

    /**
     * @dev Migrates a locker to a newer version.
     */
    function migrateLocker(address addr) external;

    /**
     * @dev Creates and returns a new instance of the locker contract.
     */
    function newLocker() external payable returns (address);

    /**
     * @dev Creates and returns a new instance of the locker contract.
     */
    function newLockerPayInKenshi() external returns (address);
}
