import XCTest
@testable import Tennis

class TennisScoreCalculatorTests: XCTestCase {
  var calc: TennisScoreCalculator!
  
  override func setUp() {
    calc = TennisScoreCalculator()
  }

  func testPlayer1() throws {
    verify(p1Points: 1, p2Points: 0, score: "Fifteen-Love")
    verify(p1Points: 0, p2Points: 1, score: "Love-Fifteen")
    verify(p1Points: 2, p2Points: 0, score: "Thirty-Love")
    verify(p1Points: 0, p2Points: 2, score: "Love-Thirty")
    verify(p1Points: 2, p2Points: 1, score: "Thirty-Fifteen")
    verify(p1Points: 1, p2Points: 2, score: "Fifteen-Thirty")
    verify(p1Points: 3, p2Points: 0, score: "Forty-Love")
    verify(p1Points: 0, p2Points: 3, score: "Love-Forty")
    verify(p1Points: 3, p2Points: 1, score: "Forty-Fifteen")
    verify(p1Points: 1, p2Points: 3, score: "Fifteen-Forty")
    verify(p1Points: 3, p2Points: 2, score: "Forty-Thirty")
    verify(p1Points: 2, p2Points: 3, score: "Thirty-Forty")
  }
  
  
  func testPlayer1Winner() {
    verify(p1Points: 4, p2Points: 0, score: "Win for player 1")
    verify(p1Points: 4, p2Points: 1, score: "Win for player 1")
    verify(p1Points: 4, p2Points: 2, score: "Win for player 1")
  }

  func testPlayer2Winner() {
    verify(p1Points: 0, p2Points: 4, score: "Win for player 2")
    verify(p1Points: 1, p2Points: 4, score: "Win for player 2")
    verify(p1Points: 2, p2Points: 4, score: "Win for player 2")
  }
  
  func testAdvantage() {
    verify(p1Points: 4, p2Points: 3, score: "Advantage player 1")
    verify(p1Points: 8, p2Points: 7, score: "Advantage player 1")
    verify(p1Points: 3, p2Points: 4, score: "Advantage player 2")
    verify(p1Points: 7, p2Points: 8, score: "Advantage player 2")
  }
  
  func testTie() {
    verify(p1Points: 0, p2Points: 0, score: "Love-All")
    verify(p1Points: 1, p2Points: 1, score: "Fifteen-All")
    verify(p1Points: 2, p2Points: 2, score: "Thirty-All")
    verify(p1Points: 3, p2Points: 3, score: "Deuce")
    verify(p1Points: 4, p2Points: 4, score: "Deuce")
  }
  
  func verify(p1Points: Int, p2Points: Int, score: String) {
    XCTAssertEqual(score, calc.score(player1Points: p1Points, player2Points: p2Points))
  }
}
