import Foundation

func minSplit(amount:Int) -> Int 
{
    var money = amount
    var number = 0
    let dev = [50, 20, 10, 5, 1]
    for index in 0...4 {
        while (money >= dev[index]){
            money -= dev[index]
            number += 1
        }
    }
    return number
}

//input the money
var money:Int = 461

print("The minimum amount of coins is \(minSplit(amount:money))")