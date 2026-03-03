import Foundation

/// LC #11 - Container With Most Water
/// Two Pointers (Greedy) Approach - 03/02/2026
/// Time: O(n) | Space: O(1)
/// took 0 ms and 21.66 MB

class Solution {

    /// function will take:
    ///     array "height" of type Int (length of vertical lines at each index)
    ///
    /// function will return:
    ///     maximum amount of water a container can store (area between two lines and x-axis)
    func maxArea(_ height: [Int]) -> Int {

        var solution: Int = 0                   // final answer
        var area: Int                           // calculation storage variable
        var left: Int = 0
        var right: Int = height.count - 1

        while left < right {
            
            /// Rectangle Area = Width X Height
            /// why minimum?
            ///     imagine you are building a wooden crate in which
            ///     one side is 10 feet tall and the other side is only 3 feet tall.
            ///     if you try to fill it with water, what happens?
            ///         1. As soon as the water level hits 3.1 feet, it starts pouring out over the shorter side.
            ///         2. The amount of water a container can hold is limited by its shortest wall.
            area = (right - left) * min(height[left], height[right])
            solution = max(solution, area)

            height[left] < height[right] ? (left += 1) : (right -= 1)
        }

        return solution
    }
}
