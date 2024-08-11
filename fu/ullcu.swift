protocol CoordinateSpaceProtocol {
    // Protocol definition
}

struct MyCoordinateSpace: CoordinateSpaceProtocol {
    // Implement CoordinateSpaceProtocol
}

func calculateFrame(in coordinateSpace: MyCoordinateSpace) -> CGRect {
    // Calculate frame logic here
    return CGRect(x: 0, y: 0, width: 100, height: 50)
}

let myCoordinateSpace = MyCoordinateSpace()
let calculatedFrame = calculateFrame(in: myCoordinateSpace)
print(calculatedFrame) // Output: (0.0, 0.0, 100.0, 50.0)
