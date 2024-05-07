/*:
## Exercise - Type Casting and Inspection

 Create a collection of type [Any], including a few doubles, integers, strings, and booleans within the collection. Print the contents of the collection.
 */
var collections : [Any] = [6.9,25,"Anay",true]
print(collections)

//:  Loop through the collection. For each integer, print "The integer has a value of ", followed by the integer value. Repeat the steps for doubles, strings and booleans.
for item in collections
{
   if item is Int{
       print("The integer has a value of \(item)")
   }
   if item is Double{
       print("The Double has a value of \(item)")
   }
   if item is String{
       print("The String has a value of \(item)")
   }
   if item is Bool{
       print("The Bool has a value of \(item)")
   }
}

//:  Create a [String : Any] dictionary, where the values are a mixture of doubles, integers, strings, and booleans. Print the key/value pairs within the collection
var dictionary:[String : Any] = ["First": 1, "Second": 2.5, "Third": "Shubh","Fourth": true, "Fifth": 8,"Sixth":"Suraj"]
print(dictionary)

//:  Create a variable `total` of type `Double` set to 0. Then loop through the dictionary, and add the value of each integer and double to your variable's value. For each string value, add 1 to the total. For each boolean, add 2 to the total if the boolean is `true`, or subtract 3 if it's `false`. Print the value of `total`.
var total : Double = 0
for(_,value) in dictionary
{
    if let number = value as? Int{
        total = total + Double(number)
    }
    else if let number = value as? Double{
        total = total + number
    }
   else if  value is String{
        total = total + 1.0
    }
    else if let bool = value as? Bool{
        if(bool)
        {
            total = total + 2
        }
        else
        {
            total = total - 3
        }
    }
}
print(total)

//:  Create a variable `total2` of type `Double` set to 0. Loop through the collection again, adding up all the integers and doubles. For each string that you come across during the loop, attempt to convert the string into a number, and add that value to the total. Ignore booleans. Print the total.
var total2: Double = 0

for (_, value) in dictionary {
    if let number = value as? Int {
        total2 = total2 + Double(number)
    } else if let number = value as? Double {
        total2 = total2 + number
    } else if let string = value as? String {
        if let validNumber = Double(string) {
            total2 = total2 + validNumber
        }
    }
}

print(total2)

/*:
page 1 of 2  |  [Next: App Exercise - Workout Types](@next)
 */
