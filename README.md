# Foundry bug reproduction

When a contract must be linked against external libraries, and a Foundry script deploys such contract, prompts are
shown twice.

Reproduction steps:

1. Launch an anvil instance: `anvil -a 1`
2. Launch script: `forge script -f http://localhost:8545 --broadcast script/Counter.s.sol:CounterScript`
3. Observe that a prompt shows up and paste the first anvil private key: `0xac0974bec3...`
4. Observe that a second identical prompt is displayed

If the deployed contract does not have external libraries that must be linked, the problem does not happen.
