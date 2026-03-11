import Foundation

/// LC #20 - Valid Parentheses
/// Stack + Mapping Approach - 03/08/2026
/// Time: O(n) | Space: O(n)
/// took 4 ms and 20.56 MB

class Solution {
    
    /// function will take:
    ///     string "s" consisting of parentheses characters
    ///
    /// function will return:
    ///     true if the string is a valid parentheses sequence, else false
    func isValid(_ s: String) -> Bool {
        var characterStack = Stack<Character>()
        let mapping: [Character: Character] = ["{": "}", "(": ")", "[": "]"]
        
        for char in s {
            if mapping[char] != nil {
                characterStack.push(char)
            } else {
                guard let lastOpen = characterStack.pop(), mapping[lastOpen] == char else {
                    return false
                }
            }
        }
        return characterStack.isEmpty
    }
}

struct Stack<Element> {
    private var storage: [Element] = []

    mutating func push(_ element: Element) {
        storage.append(element)
    }

    mutating func pop() -> Element? {
        return storage.popLast()
    }

    func peek() -> Element? {
        return storage.last
    }

    var isEmpty: Bool {
        return storage.isEmpty
    }
}

