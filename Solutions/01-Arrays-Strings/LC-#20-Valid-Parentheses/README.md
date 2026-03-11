## LC #20 — Valid Parentheses

**Difficulty:** Easy  
**Pattern:** Stack / Parentheses Matching  
**Link:** [LeetCode 20](https://leetcode.com/problems/valid-parentheses/)

---

## Problem Statement

Given a string `s` containing just the characters `'('`, `')'`, `'{'`, `'}'`, `'['` and `']'`, determine if the input string is valid.

An input string is valid if:

1. Every close bracket has a corresponding open bracket of the same type.  
2. Open brackets must be closed in the correct order.  
3. Open brackets must be closed by the same type of brackets.

---

## Examples

**Example 1:**
```
Input: s = "()"
Output: true
```

**Example 2:**
```
Input: s = "()[]{}"
Output: true
```

**Example 3:**
```
Input: s = "(]"
Output: false
```

**Example 4:**
```
Input: s = "([])"
Output: true
```

**Example 5:**
```
Input: s = "([)]"
Output: false
```

---

## Constraints

- `1 <= s.length <= 10^4`  
- `s` consists of parentheses only `'()[]{}'`.

---

## Approach

### Stack + Mapping
- Use a stack to store opening brackets.
- Use a dictionary mapping from opening bracket to its corresponding closing bracket.
- For each character:
  - If it is an opening bracket, push it onto the stack.
  - If it is a closing bracket, pop from the stack and check if it matches the expected closing bracket from the map.
- If at any point there is a mismatch or the stack is empty when expecting an opening bracket, return `false`.
- At the end, the stack must be empty for the string to be valid.

- **Time:** O(n)  
- **Space:** O(n) (stack)

### Stack with Switch Cases
- Use an array as an explicit stack of characters.
- For each character:
  - On `'('`, `'{'`, `'['`, push onto the stack.
  - On `')'`, `'}'`, `']'`, pop from the stack and ensure it is the matching opening bracket.
- If a mismatch occurs or we try to pop from an empty stack, return `false`.
- At the end, the stack must be empty.

- **Time:** O(n)  
- **Space:** O(n)

---

## Solutions

- [stack_mapping_solution.swift](./stack_mapping_solution.swift)
- [stack_switch_solution.swift](./stack_switch_solution.swift)

