import Foundation

func isPalindrom(str:String ) -> Bool 
{
    if (str == String(str.reversed()))
    {
        return true
    }
    return false
}


//enter the word
var word:String = "Banana"    
if(isPalindrom(str:word.lowercased())) 
{
    print("The word \(word) is palindrome.")
}
else 
{
    print("The word \(word) is not palindrome.")
}