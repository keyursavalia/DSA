## LC #3 — Longest Substring Without Repeating Characters

**Difficulty:** Medium  
**Pattern:** Sliding Window / Last-Seen Index  
**Link:** [LeetCode 3](https://leetcode.com/problems/longest-substring-without-repeating-characters/)

---

## Problem Statement

Given a string `s`, find the length of the **longest substring** without duplicate characters.

---

## Examples

**Example 1:**
```
Input: s = "abcabcbb"
Output: 3
Explanation: The answer is "abc", with the length of 3.
Note that "bca" and "cab" are also correct answers.
```

**Example 2:**
```
Input: s = "bbbbb"
Output: 1
Explanation: The answer is "b", with the length of 1.
```

**Example 3:**
```
Input: s = "pwwkew"
Output: 3
Explanation: The answer is "wke", with the length of 3.
Notice that the answer must be a substring, "pwke" is a subsequence and not a substring.
```

---

## Constraints

- `0 <= s.length <= 5 * 10^4`  
- `s` consists of English letters, digits, symbols, and spaces.

---

## Approach

### Sliding Window with Last-Seen Indices
- Maintain a sliding window \([left, right]\) that always represents a substring with **all unique characters**.
- Use an array `lastSeen` of size 128 (ASCII) initialized with `-1`, where `lastSeen[c]` stores the **last index** at which character `c` appeared.
- For each position `right`:
  - Convert `s[right]` to its ASCII index.
  - If this character was seen at index `idx >= left`, move `left` to `idx + 1` to ensure no duplicates in the current window.
  - Update `lastSeen` for this character to `right`.
  - Update `maxLength` as `max(maxLength, right - left + 1)`.
- At the end, `maxLength` is the length of the longest substring without repeating characters.

- **Time:** O(n)  
- **Space:** O(1) (fixed-size array for ASCII characters)

---

## Solutions

- [sliding_window_array_last_seen_solution.swift](./sliding_window_array_last_seen_solution.swift)
- [sliding_window_hashmap_solution.swift](./sliding_window_hashmap_solution.swift)

