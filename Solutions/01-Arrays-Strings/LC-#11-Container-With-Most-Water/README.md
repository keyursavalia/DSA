# LC #11 — Container With Most Water

**Difficulty:** Medium  
**Pattern:** Two Pointers / Greedy  
**Link:** [LeetCode 11](https://leetcode.com/problems/container-with-most-water/)

---

## Problem Statement

You are given an integer array `height` of length `n`. There are `n` vertical lines drawn such that the two endpoints of the `i`th line are `(i, 0)` and `(i, height[i])`.

Find two lines that together with the x-axis form a container, such that the container contains the most water.

Return the maximum amount of water a container can store.

Notice that you may not slant the container.

---

## Examples

**Example 1:**
```
Input: height = [1,8,6,2,5,4,8,3,7]
Output: 49
Explanation: The above vertical lines are represented by array [1,8,6,2,5,4,8,3,7]. In this case, the max area of water (blue section) the container can contain is 49.
```

**Example 2:**
```
Input: height = [1,1]
Output: 1
```

---

## Constraints

- `2 <= n <= 10^5`
- `0 <= height[i] <= 10^4`
- `n == height.length`

---

## Approach

### Two Pointers (Greedy)
- Use `left` at the start and `right` at the end of the array.
- The area between two lines is `(right - left) * min(height[left], height[right])`.
- At each step, compute the area and update the maximum.
- Move the pointer pointing to the shorter line inward—since the width decreases, the only way to possibly get a larger area is if the shorter side becomes taller.
- **Time:** O(n) | **Space:** O(1)

---

## Solutions

- [two_pointers_solution.swift](./two_pointers_solution.swift)
