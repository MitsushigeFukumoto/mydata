struct Square{
    var sideLength = 3
    var area:Int{
        let result = sideLength * sideLength
        return result
    }
}
let square = Square()
print(square.area)
