

# Error Handling Contract

This Solidity smart contract demonstrates different error handling mechanisms available in Solidity version 0.8.17.

## Contract Functions

### `RequireFunc(uint i)`

```solidity
function RequireFunc(uint i) public pure {
    require(i > 7, "Input must be greater than 7");
}
```

This function uses the `require` statement to validate the input parameter `i`. If `i` is not greater than 7, the function execution will revert with the error message "Input must be greater than 7".

### `RevertFunc(uint i)`

```solidity
function RevertFunc(uint i) public pure {
    if (i <= 7) {
        revert("Input must be greater than 7");
    }
}
```

Similar to `RequireFunc`, this function checks if the input parameter `i` is greater than 7. If `i` is 7 or less, the function execution will revert with the error message "Input must be greater than 7" using the `revert` statement.

### `AssertFunc(uint num)`

```solidity
function AssertFunc(uint num) public pure {
    assert(num == 15);
}
```

This function uses the `assert` statement to validate that the input parameter `num` equals 15. If the condition `num == 15` evaluates to false, the transaction will revert. `assert` is typically used to check for conditions that should never occur; therefore, it is used to ensure internal consistency.

## License

This contract is licensed under the MIT License. 
