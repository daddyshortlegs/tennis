import XCTest
@testable import Tennis

class TennisScoreCalculatorTests: XCTestCase {
  var calc: TennisScoreCalculator!
  
  override func setUp() {
    calc = TennisScoreCalculator()
  }

  func testNoPoints() throws {
    let result = calc.score(player1Points: 0, player2Points: 0)
    XCTAssertEqual("Love-Love", result)
  }

  func testOnePoint() throws {
    let result = calc.score(player1Points: 1, player2Points: 0)
    XCTAssertEqual("Fifteen-Love", result)
  }



}
