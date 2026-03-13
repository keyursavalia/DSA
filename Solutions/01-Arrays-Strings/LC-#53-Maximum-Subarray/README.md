# LC #53 — Maximum Subarray

**Difficulty:** Medium  
**Pattern:** Kadane’s Algorithm / Dynamic Programming  
**Link:** [LeetCode 53](https://leetcode.com/problems/maximum-subarray/)

---

## Problem Statement

Given an integer array `nums`, find the subarray with the largest sum, and return its sum.

---

## Examples

**Example 1:**
```
Input: nums = [-2,1,-3,4,-1,2,1,-5,4]
Output: 6
Explanation: The subarray [4,-1,2,1] has the largest sum 6.
```

**Example 2:**
```
Input: nums = [1]
Output: 1
```

**Example 3:**
```
Input: nums = [5,4,-1,7,8]
Output: 23
```

---

## Constraints

- `1 <= nums.length <= 10^5`
- `-10^4 <= nums[i] <= 10^4`

---

## Approach

### Approach 1: Divide and Conquer
- Split the array into left and right halves.
- Recursively compute:
  - best subarray sum in left half
  - best subarray sum in right half
  - best subarray sum crossing the midpoint
- Answer is the max of the three.
- **Time:** O(n log n) | **Space:** O(log n) recursion stack

### Approach 2: Kadane’s Algorithm (Dynamic Programming)
- Track a running `currentMax` (best subarray sum ending at the current index).
- Update `globalMax` as the best seen so far.
- At each element `x`, either extend the previous subarray (`currentMax + x`) or start fresh from `x`.
- **Time:** O(n) | **Space:** O(1)

---

## Solutions

- [divide_and_conquer_solution.swift](./divide_and_conquer_solution.swift)
- [kadanes_algorithm_solution.swift](./kadanes_algorithm_solution.swift)
