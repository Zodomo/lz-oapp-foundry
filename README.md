# This is a custom rebuild of LayerZero's oapp-evm package, eliminating the need for the devtools library. OpenZeppelin's Ownable has been removed entirely, with all affected functions set to virtual. OpenZeppelin's SafeERC20 and SafeCast were replaced with Solady's SafeTransferLib and SafeCastLib. The constructors were replaced with initializers. openzeppelin-contracts and solidity-bytes-utils are also imported directly. Node is not required, and everything should work within foundry natively.

# There is no guarantee this repo will be maintained.

## Foundry

**Foundry is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.**

Foundry consists of:

- **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).
- **Cast**: Swiss army knife for interacting with EVM smart contracts, sending transactions and getting chain data.
- **Anvil**: Local Ethereum node, akin to Ganache, Hardhat Network.
- **Chisel**: Fast, utilitarian, and verbose solidity REPL.

## Documentation

https://book.getfoundry.sh/

## Usage

### Build

```shell
$ forge build
```

### Test

```shell
$ forge test
```

### Format

```shell
$ forge fmt
```

### Gas Snapshots

```shell
$ forge snapshot
```

### Anvil

```shell
$ anvil
```

### Deploy

```shell
$ forge script script/Counter.s.sol:CounterScript --rpc-url <your_rpc_url> --private-key <your_private_key>
```

### Cast

```shell
$ cast <subcommand>
```

### Help

```shell
$ forge --help
$ anvil --help
$ cast --help
```
