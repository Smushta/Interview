import Foundation

func countVariants(stearsCount:Int) -> Int {
    var variants = stearsCount
    
    for twoStearStep in 2...stearsCount / 2{
        let steps = stearsCount - twoStearStep
        var n = 1
        for i in steps - (twoStearStep - 1)...steps {
            n *= i
        }
        variants += n
    }
    return variants
}
 
var steps = 10

print("\(countVariants(stearsCount:steps)) ways")