# LC #242 — Valid Anagram

**Difficulty:** Easy  
**Pattern:** Hash Map / Character Count  
**Link:** [LeetCode 242](https://leetcode.com/problems/valid-anagram/)

---

## Problem Statement

Given two strings `s` and `t`, return `true` if `t` is an anagram of `s`, and `false` otherwise.

An **Anagram** is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once.

---

## Examples

**Example 1:**
```
Input: s = "anagram", t = "nagaram"
Output: true
```

**Example 2:**
```
Input: s = "rat", t = "car"
Output: false
```

---

## Constraints

- `s` and `t` consist of lowercase English letters.
- `1 <= s.length, t.length <= 5 * 10^4`

**Follow up:** What if the inputs contain Unicode characters? How would you adapt your solution to such a case?

---

## Approach

### Approach 1: Two Dictionaries (First Instinct)
- Build a character→count dictionary for each string. Compare the dictionaries for equality.
- **Time:** O(n) | **Space:** O(n)

### Approach 2: Helper (1st Optimization)
- Extract character counting into a helper using `storage[char, default: 0] += 1`. Compare the two dictionaries.
- **Time:** O(n) | **Space:** O(n)

### Approach 3: Helper with Early Exit
- Same as Approach 2, but add early exit if string lengths differ.
- **Time:** O(n) | **Space:** O(n)

### Approach 4: Single Dictionary
- Count characters in `s` (increment). Iterate over `t` and decrement counts. If any character is missing or count goes negative, return `false`.
- **Time:** O(n) | **Space:** O(1) — or O(k) where k is the size of the character set (26 for lowercase English).

---

## Solutions

- [first_instinct_solution.swift](./first_instinct_solution.swift)
- [helper_first_opt_solution.swift](./helper_first_opt_solution.swift)
- [helper_refactored_solution.swift](./helper_refactored_solution.swift)
- [single_dict_solution.swift](./single_dict_solution.swift)
