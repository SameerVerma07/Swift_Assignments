/*:
## Exercise - Create Functions

 Write a function called `introduceMyself` that prints a brief introduction of yourself. Call the function and observe the printout.
 */
func introduceMyself(){
    print("Hello, my self Sameer verma")
}
introduceMyself()

//:  Write a function called `magicEightBall` that generates a random number and then uses either a switch statement or if-else-if statements to print different responses based on the random number generated. `let randomNum = Int.random(in: 0...4)` will generate a random number from 0 to 4, after which you can print different phrases corresponding to the number generated. Call the function multiple times and observe the different printouts.
import Foundation
func magicEightBall() -> Int{
   let  randomNum = Int.random(in: 0...4)
    return randomNum
}
let x = magicEightBall()
switch x {
case 0 : print("0 is selected")
case 1 : print("1 is selected")

case 2 : print("2 is selected")
case 3 : print("3 is selected")
case 4 : print("4 is selected")
default:  print("Error")
}

let y = magicEightBall()
switch y {
case 0 : print("0 is selected")
case 1 : print("1 is selected")

case 2 : print("2 is selected")
case 3 : print("3 is selected")
case 4 : print("4 is selected")
default:  print("Error")
}

let z = magicEightBall()
switch z {
case 0 : print("0 is selected")
case 1 : print("1 is selected")

case 2 : print("2 is selected")
case 3 : print("3 is selected")
case 4 : print("4 is selected")
default:  print("Error")
}
/*:
page 1 of 6  |  [Next: App Exercise - A Functioning App](@next)
 */
