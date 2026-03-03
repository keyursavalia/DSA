## LC #485 — Max Consecutive Ones

**Difficulty:** Easy  
**Pattern:** Sliding Window / Counting  
**Link:** [LeetCode 485](https://leetcode.com/problems/max-consecutive-ones/)

---

## Problem Statement

Given a binary array `nums`, return the maximum number of consecutive `1`'s in the array.

---

## Examples

**Example 1:**
```
Input: nums = [1,1,0,1,1,1]
Output: 3
Explanation: The first two digits or the last three digits are consecutive 1s. The maximum number of consecutive 1s is 3.
```

**Example 2:**
```
Input: nums = [1,0,1,1,0,1]
Output: 2
```

---

## Constraints

- `1 <= nums.length <= 10^5`  
- `nums[i]` is either `0` or `1`.

---

## Approach

### Single Pass Counting
- Traverse the array once, maintaining a `currentCount` of consecutive `1`s.
- When you see a `1`, increment `currentCount` and update `maxCount` to the maximum of itself and `currentCount`.
- When you see a `0`, reset `currentCount` to `0` since the current streak of `1`s is broken.
- At the end, `maxCount` is the length of the longest contiguous segment of `1`s.

- **Time:** O(n)  
- **Space:** O(1)

---

## Solutions

- [single_pass_counting_solution.swift](./single_pass_counting_solution.swift)

