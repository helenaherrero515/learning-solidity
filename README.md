# Avalanche Smart Contract Starter

Solidity starter for deploying on **Avalanche C-Chain**, with a step-by-step learning path.

---

## Learning path (easy access)

| # | Topic | Path |
|---|--------|------|
| 1 | [Intro](contracts/learning/1-Intro/) | `contracts/learning/1-Intro/` |
| 2 | [State Variables](contracts/learning/2-State-Variables/) | `contracts/learning/2-State-Variables/` |
| 3 | [Local Variables](contracts/learning/3-Local-Variables/) | `contracts/learning/3-Local-Variables/` |
| 4 | [Function](contracts/learning/4-Function/) | `contracts/learning/4-Function/` |
| 5 | [Constructor](contracts/learning/5-Constructor/) | `contracts/learning/5-Constructor/` |
| 6 | [Data Types](contracts/learning/6-Data-Types/) | `contracts/learning/6-Data-Types/` |
| 7 | [Array](contracts/learning/7-Array/) | `contracts/learning/7-Array/` |
| 8 | [Loops](contracts/learning/8-Loops/) | `contracts/learning/8-Loops/` |
| 9 | [Conditionals](contracts/learning/9-Conditionals/) | `contracts/learning/9-Conditionals/` |
| 10 | [Struct](contracts/learning/10-Struct/) | `contracts/learning/10-Struct/` |
| 11 | [Mapping](contracts/learning/11-Mapping/) | `contracts/learning/11-Mapping/` |
| 12 | [Storage Locations](contracts/learning/12-Storage-Locations/) | `contracts/learning/12-Storage-Locations/` |
| 13 | [Global Variables](contracts/learning/13-Global-Variables/) | `contracts/learning/13-Global-Variables/` |
| 14 | [Contract Balance](contracts/learning/14-Contract-Balance/) | `contracts/learning/14-Contract-Balance/` |
| 15 | [Visibility](contracts/learning/15-Visibility/) | `contracts/learning/15-Visibility/` |
| 16 | [Exercises](contracts/learning/16-Exercises/) | `contracts/learning/16-Exercises/` |

Each folder has a `.sol` file you can open, edit, and compile.

---

## Quick start

```bash
npm install
npm run compile
```

**Deploy to Avalanche Fuji testnet:**

```bash
# Set in .env: PRIVATE_KEY, optional AVALANCHE_FUJI_RPC_URL
npm run deploy:fuji
```

**Deploy to Avalanche mainnet:**

```bash
npm run deploy:mainnet
```

---

## Project layout

- **`contracts/`** — Solidity sources (main apps + `learning/` lessons)
- **`scripts/deploy.js`** — Deploys `AvalancheGreeter`
- **`hardhat.config.js`** — Networks: `fuji` (43113), `avalanche` (43114)
