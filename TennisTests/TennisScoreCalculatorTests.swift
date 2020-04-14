import XCTest
@testable import Tennis

class TennisScoreCalculatorTests: XCTestCase {
  var calc: TennisScoreCalculator!
  
  override func setUp() {
    calc = TennisScoreCalculator()
  }

  func testPlayer1() throws {
    XCTAssertEqual("Fifteen-Love", calc.score(player1Points: 1, player2Points: 0))
    XCTAssertEqual("Thirty-Love", calc.score(player1Points: 2, player2Points: 0))
    XCTAssertEqual("Forty-Love", calc.score(player1Points: 3, player2Points: 0))
  }

  func testPlayer2() throws {
    XCTAssertEqual("Love-Fifteen", calc.score(player1Points: 0, player2Points: 1))
    XCTAssertEqual("Love-Thirty", calc.score(player1Points: 0, player2Points: 2))
    XCTAssertEqual("Love-Forty", calc.score(player1Points: 0, player2Points: 3))
  }
  
  func testPlayer1Winner() {
    XCTAssertEqual("Win for player 1", calc.score(player1Points: 4, player2Points: 0))
    XCTAssertEqual("Win for player 1", calc.score(player1Points: 4, player2Points: 1))
    XCTAssertEqual("Win for player 1", calc.score(player1Points: 4, player2Points: 2))
  }

  func testPlayer2Winner() {
    XCTAssertEqual("Win for player 2", calc.score(player1Points: 0, player2Points: 4))
    XCTAssertEqual("Win for player 2", calc.score(player1Points: 1, player2Points: 4))
    XCTAssertEqual("Win for player 2", calc.score(player1Points: 2, player2Points: 4))
  }
  
  func testAdvantage() {
    XCTAssertEqual("Advantage player 1", calc.score(player1Points: 4, player2Points: 3))
    XCTAssertEqual("Advantage player 1", calc.score(player1Points: 8, player2Points: 7))
    XCTAssertEqual("Advantage player 2", calc.score(player1Points: 3, player2Points: 4))
    XCTAssertEqual("Advantage player 2", calc.score(player1Points: 7, player2Points: 8))
  }
  
  func testTie() {
    XCTAssertEqual("Love-All", calc.score(player1Points: 0, player2Points: 0))
    XCTAssertEqual("Fifteen-All", calc.score(player1Points: 1, player2Points: 1))
    XCTAssertEqual("Thirty-All", calc.score(player1Points: 2, player2Points: 2))
    XCTAssertEqual("Deuce", calc.score(player1Points: 3, player2Points: 3))
    XCTAssertEqual("Deuce", calc.score(player1Points: 4, player2Points: 4))

  }


}
