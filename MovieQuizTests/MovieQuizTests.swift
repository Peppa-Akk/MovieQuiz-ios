import XCTest

struct ArithmeticOperations {
    func addition(num1: Int, num2: Int) -> Int {
        return num1 + num2
    }
    
    func subtraction(num1: Int, num2: Int) -> Int {
        return num1 - num2
    }
    
    func multiplication(num1: Int, num2: Int) -> Int {
        return num1 * num2
    }
}

final class MovieQuizTests: XCTestCase {
    func testAddition() throws {
        // Given
        let arihmeticOperations = ArithmeticOperations()
        let num1 = 1
        let num2 = 2
        
        // When
        let result = arihmeticOperations.addition(num1: num1, num2: num2)
        
        // Then
        XCTAssertEqual(result, 3)
    }
}