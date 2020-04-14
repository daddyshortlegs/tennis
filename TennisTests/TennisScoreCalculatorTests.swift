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
    XCTAssertEqual("Thirty-Love", calc.score(player1Points: 2, player2Points: 0))
    XCTAssertEqual("Forty-Love", calc.score(player1Points: 3, player2Points: 0))
  }

  func testPlayer2() throws {
    XCTAssertEqual("Love-Fifteen", calc.score(player1Points: 0, player2Points: 1))
    XCTAssertEqual("Love-Thirty", calc.score(player1Points: 0, player2Points: 2))
    XCTAssertEqual("Love-Forty", calc.score(player1Points: 0, player2Points: 3))
  }


}
