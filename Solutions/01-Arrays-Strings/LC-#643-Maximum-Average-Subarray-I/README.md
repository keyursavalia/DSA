## LC #643 — Maximum Average Subarray I

**Difficulty:** Easy  
**Pattern:** Sliding Window (Fixed Size)  
**Link:** [LeetCode 643](https://leetcode.com/problems/maximum-average-subarray-i/)

---

## Problem Statement

You are given an integer array `nums` consisting of `n` elements, and an integer `k`.

Find a contiguous subarray whose length is equal to `k` that has the maximum average value and return this value.  
Any answer with a calculation error less than `10^-5` will be accepted.

---

## Examples

**Example 1:**
```
Input: nums = [1,12,-5,-6,50,3], k = 4
Output: 12.75000
Explanation: Maximum average is (12 - 5 - 6 + 50) / 4 = 51 / 4 = 12.75
```

**Example 2:**
```
Input: nums = [5], k = 1
Output: 5.00000
```

---

## Constraints

- `n == nums.length`  
- `1 <= k <= n <= 10^5`  
- `-10^4 <= nums[i] <= 10^4`

---

## Approach

### Sliding Window (Fixed Size)
- First, compute the sum of the initial window of size `k`.
- Then, slide the window one position at a time:
  - Add the new element entering the window.
  - Subtract the element leaving the window.
- Track the maximum window sum seen so far.
- At the end, divide the maximum sum by `k` to get the maximum average.

- **Time:** O(n)  
- **Space:** O(1)

---

## Solutions

- [sliding_window_solution.swift](./sliding_window_solution.swift)

