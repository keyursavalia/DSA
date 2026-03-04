## LC #238 — Product of Array Except Self

**Difficulty:** Medium  
**Pattern:** Prefix / Suffix Products  
**Link:** [LeetCode 238](https://leetcode.com/problems/product-of-array-except-self/)

---

## Problem Statement

Given an integer array `nums`, return an array `answer` such that `answer[i]` is equal to the product of all the elements of `nums` except `nums[i]`.

The product of any prefix or suffix of `nums` is guaranteed to fit in a 32-bit integer.

You must write an algorithm that runs in `O(n)` time and **without using the division operation**.

---

## Examples

**Example 1:**
```
Input: nums = [1,2,3,4]
Output: [24,12,8,6]
```

**Example 2:**
```
Input: nums = [-1,1,0,-3,3]
Output: [0,0,9,0,0]
```

---

## Constraints

- `2 <= nums.length <= 10^5`  
- `-30 <= nums[i] <= 30`  
- The input is generated such that `answer[i]` is guaranteed to fit in a 32-bit integer.

---

## Approach

### In-Place Result with Running Products (Optimized Space)
- Use the output array itself to store prefix products: `result[i]` will hold the product of all elements before `i`.
- First pass (left to right): maintain a running `leftProduct`; set `result[i] = leftProduct`, then multiply `leftProduct` by `nums[i]`.
- Second pass (right to left): maintain a running `rightProduct`; multiply `result[i]` by `rightProduct`, then multiply `rightProduct` by `nums[i]`.
- At the end of both passes, `result[i]` contains the product of all elements except `nums[i]`, using only constant extra space besides the output array.

- **Time:** O(n)  
- **Space:** O(1) extra (output array ignored)

---

## Solutions

- [in_place_products_solution.swift](./in_place_products_solution.swift)

