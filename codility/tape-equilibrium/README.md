# Smallest Missing Positive Integer

## Problem

You are given a non-empty array inputArray of N integers.

A split point P (where 0 < P < N) divides the array into:

- left: A[0] … A[P-1]
- right: A[P] … A[N-1]

Return the minimal absolute difference between the sum of the left part and the sum of the right part.

## Constraints

Constraints (this is important in Codility)

- N is between 1 and 100,000
- Values are between -1,000,000 and 1,000,000
- Expected time complexity: O(N)
- Expected space complexity: O(N) (or better)

## Example

```
A = [3, 1, 2, 4, 3]

P=1 → |3 - (1+2+4+3)|   = 11
P=2 → |(3+1) - (2+4+3)| = 7
P=3 → |(3+1+2) - (4+3)| = 1  ← minimum
P=4 → |(3+1+2+4) - 3|   = 7

Answer: 1
```

## How To

- There is a test runner in `runner.js` that can simply be run by: `node runner.js`
- Implement the solution to the problem in solution.js
