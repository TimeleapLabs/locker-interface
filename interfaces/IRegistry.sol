//SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.11;

interface ILockerRegistry {
    /**
     * @dev Check if `locker` is a Kenshi locker.
     */
    function isLocker(address locker) external view returns (bool);
}

interface IMigrationRegistry {
    /**
     * @dev Check if `locker` is migrated to a newer version and return its
     * address. Returns address(0) in case it is not migrated.
     */
    function getMigration(address locker) external view returns (address);
}
