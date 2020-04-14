class TennisScoreCalculator {
  func score(player1Points: Int, player2Points: Int) -> String {
    
    return pointToScore(points: player1Points)
  }
  
  private func pointToScore(points: Int) -> String {
    if points == 1 {
      return "Fifteen-Love"
    }

    if points == 2 {
      return "Thirty-Love"
    }

    if points == 3 {
      return "Forty-Love"
    }

    return "Love-Love"
  }
}
