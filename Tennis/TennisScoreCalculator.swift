class TennisScoreCalculator {
  func score(player1Points: Int, player2Points: Int) -> String {
    if player1Points == 1 {
      return "Fifteen-Love"
    }

    if player1Points == 2 {
      return "Thirty-Love"
    }

    if player1Points == 3 {
      return "Forty-Love"
    }

    
    return "Love-Love"
  }
}
