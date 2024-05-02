/*:
## Exercise - Type Inference and Required Values
 
 Declare a variable called `name` of type `String`, but do not give it a value. Print `name` to the console. Does the code compile? Remove any code that will not compile.
 */
var name : String
//print(name)
//no the name is not printed as it is empty and we dont have intialize it any value
//:  Now assign a value to `name`, and print it to the console.
name = "Sameer Verma"

//:  Declare a variable called `distanceTraveled` and set it to 0. Do not give it an explicit type.
var distanceTraveled : Double = 0

//:  Now assign a value of 54.3 to `distanceTraveled`. Does the code compile? Go back and set an explicit type on `distanceTraveled` so the code will compile.
distanceTraveled = 54.3
print(distanceTraveled)
//in above code when we assign distanceTraveled = 0 it is in Int format due to which when we assign it 54.3 as double type value it is showing error so to remove that we declare distanceTraveled as Double
/*:
[Previous](@previous)  |  page 9 of 10  |  [Next: App Exercise - Percent Completed](@next)
 */
