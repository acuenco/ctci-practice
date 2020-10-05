import UIKit



class TripleStep{
    static let shared = TripleStep()
    /**
     Triple Step (8.1)
     A child is running up the staircase with n steps and
     can hop either 1 steps, 2 steps, or 3 steps at a time.
     Implement a method to count how many  possible ways the
     child can run up the stairs.
     
     #recursion #dp #dynamicprogramming
     */

    //recursion
    //func tripleStep(_ n: Int) -> Int {
    //    if n < 0 { return 0 }
    //    if n == 0 { return 1 }
    //    return tripleStep(n - 1) + tripleStep(n - 2) + tripleStep(n - 3)
    //}
    //memoization - DP - Top Down approach
    func tripleStep(_ n: Int) -> Int{
        var memo = [Int](repeating: -1, count: n + 1)
        return helper(&memo, n)
    }

    private func helper(_ memo: inout [Int],_ n: Int) -> Int {
        if n < 0 { return 0 }
        else if n == 0 { return 1 }
        else if memo[n] > -1 {
            return memo[n]
        }
        memo[n] = helper(&memo, n - 1) + helper(&memo, n - 2) + helper(&memo, n - 3)
        return memo[n]
    }
}

TripleStep.shared.tripleStep(0) //1
TripleStep.shared.tripleStep(1) //1
TripleStep.shared.tripleStep(2) //2
TripleStep.shared.tripleStep(3) //4
TripleStep.shared.tripleStep(4) //7
TripleStep.shared.tripleStep(5) // 13

TripleStep.shared.tripleStep(50)
