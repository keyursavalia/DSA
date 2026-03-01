# LC #167 — Two Sum II - Input Array Is Sorted

**Difficulty:** Easy  
**Pattern:** Two Pointers  
**Link:** [LeetCode 167](https://leetcode.com/problems/two-sum-ii-input-array-is-sorted/)

---

## Problem Statement

Given a **1-indexed** array of integers `numbers` that is already **sorted in non-decreasing order**, find two numbers such that they add up to a specific `target` number. Let these two numbers be `numbers[index1]` and `numbers[index2]` where `1 <= index1 < index2 <= numbers.length`.

Return *the indices of the two numbers,* `index1` *and* `index2`*, **added by one** as an integer array* `[index1, index2]`.

You may assume that each input would have **exactly one solution**, and you may not use the same element twice.

---

## Examples

**Example 1:**
```
Input: numbers = [2, 7, 11, 15], target = 9
Output: [1, 2]
Explanation: The sum of 2 and 7 is 9. Therefore, index1 = 1, index2 = 2. We return [1, 2].
```

**Example 2:**
```
Input: numbers = [2, 3, 4], target = 6
Output: [1, 3]
Explanation: The sum of 2 and 4 is 6. Therefore index1 = 1, index2 = 3. We return [1, 3].
```

**Example 3:**
```
Input: numbers = [-1, 0], target = -1
Output: [1, 2]
Explanation: The sum of -1 and 0 is -1. Therefore index1 = 1, index2 = 2. We return [1, 2].
```

---

## Constraints

- `2 <= numbers.length <= 3 * 10^4`
- `-1000 <= numbers[i] <= 1000`
- `numbers` is sorted in **non-decreasing order**.
- `-1000 <= target <= 1000`
- **Only one valid answer exists.**

---

## Approach

### Brute Force
- Nested loops: for each element, check all subsequent elements for a pair that sums to `target`. Return 1-indexed indices.
- **Time:** O(n²) | **Space:** O(1)

### Optimized (Two Pointers)
- Use `left` at start and `right` at end. If `numbers[left] + numbers[right] == target`, return `[left + 1, right + 1]`. If sum is too small, move `left` right; if too large, move `right` left. Works because the array is sorted.
- **Time:** O(n) | **Space:** O(1)

### Alternative (HashMap)
- Same as LC #1: single pass with a hash map. Still O(n) time but O(n) space; Two Pointers is preferred when the array is sorted.
- **Time:** O(n) | **Space:** O(n)

---

## Solutions

- [brute_force_solution.swift](./brute_force_solution.swift)
- [optimized_solution.swift](./optimized_solution.swift)
