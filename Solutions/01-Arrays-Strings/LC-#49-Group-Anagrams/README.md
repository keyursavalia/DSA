# LC #49 — Group Anagrams

**Difficulty:** Medium  
**Pattern:** Hash Table / Sorting / Character Count  
**Link:** [LeetCode 49](https://leetcode.com/problems/group-anagrams/)

---

## Problem Statement

Given an array of strings `strs`, group the anagrams together. You can return the answer in any order.

An **Anagram** is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once.

---

## Examples

**Example 1:**
```
Input: strs = ["eat","tea","tan","ate","nat","bat"]
Output: [["bat"],["nat","tan"],["ate","eat","tea"]]
Explanation:
- "ate", "eat", and "tea" are anagrams (same letters).
- "nat" and "tan" are anagrams.
- "bat" has no anagram in the array.
```

**Example 2:**
```
Input: strs = [""]
Output: [[""]]
```

**Example 3:**
```
Input: strs = ["a"]
Output: [["a"]]
```

---

## Constraints

- `strs[i]` consists of lowercase English letters.
- `0 <= strs[i].length <= 100`
- `1 <= strs.length <= 10^4`

---

## Approach

### Approach 1: Sorting
- Use the sorted string as a key: anagrams share the same sorted form.
- Map each string to key `String(string.sorted())`, append to `[String]` in a dictionary, then return `Array(storage.values)`.
- **Time:** O(n * k log k) where k = max string length | **Space:** O(n * k)

### Approach 2: Counting
- Use a 26-element count array (one per letter) as the key. Anagrams have the same counts.
- For each string, build `counts`, use `[Int]` as dictionary key (Swift’s `Array` is `Hashable` when elements are), group by that key.
- **Time:** O(n * k) | **Space:** O(n * k)

---

## Solutions

- [sorting_approach_solution.swift](./sorting_approach_solution.swift)
- [counting_approach_solution.swift](./counting_approach_solution.swift)
