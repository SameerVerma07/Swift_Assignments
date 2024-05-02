/*:
## Exercise - Type Properties and Methods
 
 Imagine you have an app that requires the user to log in. You may have a `User` struct similar to that shown below. However, in addition to keeping track of specific user information, you might want to have a way of knowing who the current logged in user is. Create a `currentUser` type property on the `User` struct below and assign it to a `user` object representing you. Now you can access the current user through the `User` struct. Print out the properties of `currentUser`.
 */
struct User {
    
    static var currentUser:User?
    static func logIn(user: User) {
        self.currentUser = user
        print("The user: \"\(user.userName)\" has logged in.")
    }
    var userName: String
    var email: String
    var age: Int
}
var user = User(userName: "User's Name", email: "usersemail@address.com" , age: 19)
User.currentUser = user
if let currentUser = User.currentUser {
print("User's name: \(currentUser.userName)")
print("User's email addr: \(currentUser.email)")
print("User's age: \(currentUser.age)")}

/*:
 There are other properties and actions associated with a `User` struct that might be good candidates for a type property or method. One might be a method for logging in. Go back and create a type method called `logIn(user:)` where `user` is of type `User`. In the body of the method, assign the passed in user to the `currentUser` property, and print out a statement using the user's userName saying that the user has logged in.
 
 Below, call the `logIn(user:)` method and pass in a different `User` instance than what you assigned to currentUser above. Observe the printout in the console.
 */
var userTwo = User(userName: "New User", email: "newuseremail.com", age: 20 )
User.logIn(user: userTwo )

/*:
[Previous](@previous)  |  page 9 of 10  |  [Next: App Exercise - Type Properties and Methods](@next)
 */
