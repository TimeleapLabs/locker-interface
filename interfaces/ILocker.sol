//SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.11;

/**
 * @dev This is the main Locker contract, Use this interface to interact
 * with your lockers.
 */
interface ILocker {
    event OwnershipTransferred(
        address indexed previousOwner,
        address indexed newOwner
    );

    /**
     * @dev {onlyOwner} Leaves the contract without owner. It will not be
     * possible to call `onlyOwner` functions anymore. Can only be called by
     * the current owner.
     *
     * NOTE: Renouncing ownership will leave the contract without an owner,
     * thereby removing any functionality that is only available to the owner.
     */
    function renounceOwnership() external;

    /**
     * @dev {onlyOwner} Transfers ownership of the contract to a new account
     * (`newOwner`). Can only be called by the current owner.
     */
    function transferOwnership(address newOwner) external;

    /**
     * @dev Returns the locker version.
     */
    function getVersion() external pure returns (uint256);

    /**
     * @dev Returns the owner of the locker.
     */
    function getOwner() external view returns (address);

    event UnlockChanged(uint256 unlock);

    /**
     * @dev {onlyOwner} Sets the unlock time of the contract to `unlock`
     * - `unlock` needs to be bigger than the current unlock date.
     */
    function lock(uint256 unlock) external;

    /**
     * @dev Gets the unlock time of the locker contract
     */
    function getLock() external view returns (uint256);

    /**
     * @dev {onlyOwner} Sends `amount` of BEP20 `token` from contract address
     * to `recipient`
     */
    function withdraw(
        address token,
        address recipient,
        uint256 amount
    ) external returns (bool);

    /**
     * @dev {onlyOwner} Sends `amount` of BNB from contract address to
     * `recipient`
     * - `recipient` cannot be address(0)
     */
    function withdrawBNB(address recipient, uint256 amount)
        external
        returns (bool);

    /**
     * @dev {onlyOwner} Sends `amount` of BEP20 `token` from contract address
     * to the migration locker.
     */
    function migrateTokens(address token, uint256 amount)
        external
        returns (bool);

    /**
     * @dev {onlyOwner} Sends `amount` of BNB from contract address to the
     * migration locker.
     */
    function migrateBNB(uint256 amount) external returns (bool);
}
