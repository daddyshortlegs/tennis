import XCTest
@testable import Tennis

class TennisScoreCalculatorTests: XCTestCase {
  var calc: TennisScoreCalculator!
  
  override func setUp() {
    calc = TennisScoreCalculator()
  }

  func testScore() throws {
    let result = calc.score(player1Points: 0, player2Points: 0)
    XCTAssertEqual("Love-Love", result)

      
  }



}
