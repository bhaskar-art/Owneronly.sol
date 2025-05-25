---

## OwnerOnly

A contract that demonstrates the use of modifiers to restrict access to functions.

### Features:
- `onlyOwner` modifier
- `secretFunction()` can only be called by the contract owner (deployer)

### How It Works:
- On deployment, `msg.sender` becomes the owner.
- `onlyOwner` checks that only the owner can run certain functions.
