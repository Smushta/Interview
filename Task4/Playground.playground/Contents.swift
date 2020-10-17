import Foundation

func isProperly(sequence:String) -> Bool {
    var n1 = 0
    var n2 = 0
    for i in sequence{
        if(i == "("){
            n1 += 1
        }
        if(i == ")"){
            n2 += 1
        }
    }
    if (n1 == n2){
        return true
    }
    return false
}

var string = "(((()())))"
if(isProperly(sequence:string)){
    print("correct")
}
else{
    print("incorrect")
}