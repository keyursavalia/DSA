# LC #125 — Valid Palindrome

**Difficulty:** Easy  
**Pattern:** Two Pointers  
**Link:** [LeetCode 125](https://leetcode.com/problems/valid-palindrome/)

---

## Problem Statement

A phrase is a **palindrome** if, after converting all uppercase letters into lowercase letters and removing all non-alphanumeric characters, it reads the same forward and backward. Alphanumeric characters include letters and numbers.

Given a string `s`, return `true` *if it is a palindrome, or* `false` *otherwise*.

---

## Examples

**Example 1:**
```
Input: s = "A man, a plan, a canal: Panama"
Output: true
Explanation: "amanaplanacanalpanama" is a palindrome.
```

**Example 2:**
```
Input: s = "race a car"
Output: false
Explanation: "raceacar" is not a palindrome.
```

**Example 3:**
```
Input: s = " "
Output: true
Explanation: s is an empty string "" after removing non-alphanumeric characters. Since an empty string reads the same forward and backward, it is a palindrome.
```

---

## Constraints

- `1 <= s.length <= 2 * 10^5`
- `s` consists only of printable ASCII characters.

---

## Approach

### Approach 1: Clean + Reverse
- Remove all non-alphanumeric characters and convert to lowercase. Compare the cleaned string with its reverse.
- **Time:** O(n) | **Space:** O(n)

### Approach 2: Two Pointers (Pre-cleaned Array)
- Convert string to lowercase, filter to alphanumeric, convert to array. Use `left` and `right` pointers; compare characters and converge inward.
- **Time:** O(n) | **Space:** O(n)

### Approach 3: Two Pointers (In-place, Skip Non-alphanumeric)
- Use `left` and `right` pointers on the original string. Skip non-alphanumeric characters; compare only when both pointers land on alphanumeric. No extra array for cleaned string.
- **Time:** O(n) | **Space:** O(1)

---

## Solutions

- [clean_and_reverse_solution.swift](./clean_and_reverse_solution.swift)
- [two_pointers_cleaned_solution.swift](./two_pointers_cleaned_solution.swift)
- [two_pointers_in_place_solution.swift](./two_pointers_in_place_solution.swift)
