import Foundation

class Stack {
    public var store:[Int] = []
    public var table:[Int:Int] = [:]
    
    init(_ number:Int){
        store = [number]
    }
    
    public func inStore (_ number:Int) -> Bool {
        for i in 0...store.count - 1{
            if (number == store[i]){
                return true
            }
        }
        return false
    }
    
    public func setTable(){
        for i in 0...store.count - 1{
            table[store[i]] = i
        }
    }
    
    public func add(_ number:Int){
        if(!inStore(number)){
            store.append(number)
            print("Number \(number) has been successfully added")
        }
        else{
            print("Number \(number) was already found")
        }
        setTable()
        print("Current state - \(store)")
    }
    
    
    
    public func removeNum(_ number:Int){
        if(inStore(number)){
            store.remove(at: table[number]!)
            print("Number \(number) has been successfully removed")
        }
        else {
            print("Number \(number) has not been found")
        }
        setTable()
        print("Current state - \(store)")
    }
}

//Give initial number to create a structure
var dataStruct = Stack(8)
//Add any number to structure
dataStruct.add(10)
dataStruct.add(15)
dataStruct.add(1)
dataStruct.add(4)
dataStruct.add(6)
dataStruct.add(6)
dataStruct.add(3)
dataStruct.add(2)
//remove any number from structure
dataStruct.removeNum(4)