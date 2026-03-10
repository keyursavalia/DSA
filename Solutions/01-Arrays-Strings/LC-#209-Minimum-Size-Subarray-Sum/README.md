## LC #209 — Minimum Size Subarray Sum

**Difficulty:** Medium  
**Pattern:** Sliding Window (Variable Size)  
**Link:** [LeetCode 209](https://leetcode.com/problems/minimum-size-subarray-sum/)

---

## Problem Statement

Given an array of positive integers `nums` and a positive integer `target`, return the minimal length of a subarray whose sum is greater than or equal to `target`.  
If there is no such subarray, return `0` instead.

---

## Examples

**Example 1:**
```
Input: target = 7, nums = [2,3,1,2,4,3]
Output: 2
Explanation: The subarray [4,3] has the minimal length under the problem constraint.
```

**Example 2:**
```
Input: target = 4, nums = [1,4,4]
Output: 1
```

**Example 3:**
```
Input: target = 11, nums = [1,1,1,1,1,1,1,1]
Output: 0
```

---

## Constraints

- `1 <= nums.length <= 10^5`  
- `1 <= nums[i] <= 10^4`  
- `1 <= target <= 10^9`

---

## Approach

### Sliding Window (Two Pointers)
- Use two pointers `left` and `right` to represent the current window.
- Expand the window by moving `right` and adding `nums[right]` to `sum`.
- Whenever `sum >= target`, try to shrink the window from the left:
  - Update the current window size and track the minimal length seen so far.
  - Subtract `nums[left]` from `sum` and move `left` forward.
- Continue until `right` reaches the end of the array.
- If we never find a valid window, return `0`; otherwise, return the minimal length.

- **Time:** O(n)  
- **Space:** O(1)

---

## Solutions

- [sliding_window_two_pointers_solution.swift](./sliding_window_two_pointers_solution.swift)

