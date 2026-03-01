# LC #1 — Two Sum

**Difficulty:** Easy    
**Link:** [LeetCode 1](https://leetcode.com/problems/two-sum/)

---

## Problem Statement

Given an array of integers `nums` and an integer `target`, return *indices of the two numbers such that they add up to* `target`.

You may assume that each input would have **exactly one solution**, and you may not use the same element twice.

You can return the answer in any order.

---

## Examples

**Example 1:**
```
Input: nums = [2, 7, 11, 15], target = 9
Output: [0, 1]
Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].
```

**Example 2:**
```
Input: nums = [3, 2, 4], target = 6
Output: [1, 2]
```

**Example 3:**
```
Input: nums = [3, 3], target = 6
Output: [0, 1]
```

---

## Constraints

- `2 <= nums.length <= 10^4`
- `-10^9 <= nums[i] <= 10^9`
- `-10^9 <= target <= 10^9`
- **Only one valid answer exists.**

---

## Approach

### Brute Force
- Nested loops: for each element, check all subsequent elements for a pair that sums to `target`.
- **Time:** O(n²) | **Space:** O(1)

### Optimized (HashMap)
- Single pass: for each `num`, check if `target - num` exists in a hash map. If yes, return both indices; else store `num` → index in the map.
- **Time:** O(n) | **Space:** O(n)

---

## Solutions

- [brute_force_solution.swift](./brute_force_solution.swift)
- [optimized_solution.swift](./optimized_solution.swift)
