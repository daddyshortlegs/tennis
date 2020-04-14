import XCTest
@testable import Tennis

class TennisScoreCalculatorTests: XCTestCase {
  var calc: TennisScoreCalculator!
  
  override func setUp() {
    calc = TennisScoreCalculator()
  }

  func testPlayer1() throws {
    XCTAssertEqual("Love-Love", calc.score(player1Points: 0, player2Points: 0))
    XCTAssertEqual("Fifteen-Love", calc.score(player1Points: 1, player2Points: 0))
  }




}
