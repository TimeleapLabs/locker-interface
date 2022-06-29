# Kenshi Locker Interface

Interfaces shared in this repository provide programmatic access to Kenshi lockers
and related smart contracts:

- `ILocker`: To interact with the locker contracts.
- `IDeployer`: To deploy new lockers.
- `ILockerRegistry`: To check whether an address is a Kenshi locker.
- `IMigrationRegistry`: To check whether a Kenshi locker has a migration.

## Contract addresses

### Mainnet

- Locker registry: `0xbFe0F6c6188551ED1C61C22dd8bB8a4747692Fa4`
- Migration registry: `0xC21261F93360B3F9123A4fb26bbB6618aAdeFcaC`
- Deployer: `0x4571bce71ce17a85a66825f94d43aef4d2bbb391`

### Testnet

- Locker registry: `0xB174c58244853C05B05d100334b205976E6EfB3a`
- Migration registry: `0xB050957F139Eabe15786799b0d42dc6835727557`
- Deployer: `0x3df12F9051E2b8aFd05395E2E1E3ae463eAC9611`

## Tips

- If you're creating the locker in your smart contract be sure to implement a protected `transferLockerOwnership` external method just in case something goes wrong, you may need to control the locker from the outside.
