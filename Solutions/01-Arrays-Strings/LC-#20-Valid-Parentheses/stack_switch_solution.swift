import Foundation

/// LC #20 - Valid Parentheses
/// Stack + Switch Cases Approach - 03/08/2026
/// Time: O(n) | Space: O(n)
/// took 0 ms and 19.64 MB

class Solution {
    
    /// function will take:
    ///     string "s" consisting of parentheses characters
    ///
    /// function will return:
    ///     true if the string is a valid parentheses sequence, else false
    func isValid(_ s: String) -> Bool {
        var characterStack: [Character] = []
        
        for char in s {
            switch char {
            case "{", "(", "[":
                characterStack.append(char)
            case ")":
                if characterStack.popLast() != "(" { return false }
            case "}":
                if characterStack.popLast() != "{" { return false }
            case "]":
                if characterStack.popLast() != "[" { return false }
            default:
                break
            }
        }

        return characterStack.isEmpty
    }
}

