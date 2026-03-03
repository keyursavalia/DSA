## LC #15 — 3Sum

**Difficulty:** Medium  
**Pattern:** Two Pointers / Sorting  
**Link:** [LeetCode 15](https://leetcode.com/problems/3sum/)

---

## Problem Statement

Given an integer array `nums`, return all the triplets `[nums[i], nums[j], nums[k]]` such that `i != j`, `i != k`, and `j != k`, and `nums[i] + nums[j] + nums[k] == 0`.

The solution set must not contain duplicate triplets.

---

## Examples

**Example 1:**
```
Input: nums = [-1,0,1,2,-1,-4]
Output: [[-1,-1,2],[-1,0,1]]
Explanation:
nums[0] + nums[1] + nums[2] = (-1) + 0 + 1 = 0.
nums[1] + nums[2] + nums[4] = 0 + 1 + (-1) = 0.
nums[0] + nums[3] + nums[4] = (-1) + 2 + (-1) = 0.
The distinct triplets are [-1,0,1] and [-1,-1,2].
Notice that the order of the output and the order of the triplets does not matter.
```

**Example 2:**
```
Input: nums = [0,1,1]
Output: []
Explanation: The only possible triplet does not sum up to 0.
```

**Example 3:**
```
Input: nums = [0,0,0]
Output: [[0,0,0]]
Explanation: The only possible triplet sums up to 0.
```

---

## Constraints

- `3 <= nums.length <= 3000`  
- `-10^5 <= nums[i] <= 10^5`

---

## Approach

### Two Pointers with Sorting
- Sort the array first to make it easier to skip duplicates and use two pointers.
- Iterate `i` from `0` to `n-3`, treating `nums[i]` as the first element of the triplet.
- For each fixed `i`, use two pointers `left` and `right` to find pairs such that `nums[i] + nums[left] + nums[right] == 0`.
- If the sum is too small, move `left` rightward; if too large, move `right` leftward.
- Whenever a valid triplet is found, add it to the result and skip over any duplicates at `left` and `right`.
- Also skip duplicate values for `nums[i]` to avoid repeating the same triplets.

- **Time:** O(n²)  
- **Space:** O(1) extra (excluding output)

---

## Solutions

- [two_pointers_sorted_solution.swift](./two_pointers_sorted_solution.swift)

