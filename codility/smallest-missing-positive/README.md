# Smallest Missing Positive Integer

## Problem

- You are given an array A of N integers.
- Return the smallest positive integer (> 0) that does not occur in A.

## Constraints

Constraints (this is important in Codility)

- N is between 1 and 100,000
- Values are between -1,000,000 and 1,000,000
- Expected time complexity: O(N)
- Expected space complexity: O(N) (or better)

## Examples

```
A = [1, 3, 6, 4, 1, 2]  → 5
A = [1, 2, 3]           → 4
A = [-1, -3]            → 1
A = [2, 2, 2, 2]        → 1
```

## How To

- There is a test runner in `runner.js` that can simply be run by: `node runner.js`
- Implement the solution to the problem in solution.js
