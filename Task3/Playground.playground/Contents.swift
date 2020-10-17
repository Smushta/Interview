import Foundation

func notContains(array:[Int]) -> Int {
    var n = 1
    while (array.contains(n)){
        n += 1
    }
    return n
}

var numbers = [5, 9, 1, 4, 7]

print(notContains(array:numbers))