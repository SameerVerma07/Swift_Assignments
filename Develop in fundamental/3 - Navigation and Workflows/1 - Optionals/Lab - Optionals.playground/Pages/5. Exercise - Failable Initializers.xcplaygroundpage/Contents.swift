/*:
## Exercise - Failable Initializers

 Create a `Computer` struct with two properties, `ram` and `yearManufactured`, where both parameters are of type `Int`. Create a failable initializer that will only create an instance of `Computer` if `ram` is greater than 0, and if `yearManufactured` is greater than 1970, and less than 2020.
 */
struct Computer{
    var ram:Int
    var yearManufactured:Int
    
    init?(ram : Int, yearManufactured:Int)
    {
        if(ram > 0 && yearManufactured > 1970 && yearManufactured < 2020)
        {
            self.ram = ram
            self.yearManufactured=yearManufactured
        }
        else
        {
            return nil
        }
    }
}

//:  Create two instances of `Computer?` using the failable initializer. One instance should use values that will have a value within the optional, and the other should result in `nil`. Use if-let syntax to unwrap each of the `Computer?` objects and print the `ram` and `yearManufactured` if the optional contains a value.
var computer1: Computer? = Computer(ram: 16, yearManufactured: 2022)
var computer2: Computer? = Computer(ram: 4, yearManufactured: 2008)
if let unwrappedram1 = computer1?.ram{
    print(unwrappedram1)
}
if let unwrappedram2 = computer2?.ram{
    print(unwrappedram2)
}
if let unwrappedMYear = computer1?.yearManufactured{
    print(unwrappedMYear)
}
if let unwrappedMYear2 = computer2?.yearManufactured{
    print(unwrappedMYear2)
}
/*:
[Previous](@previous)  |  page 5 of 6  |  [Next: App Exercise - Workout or Nil](@next)
 */
