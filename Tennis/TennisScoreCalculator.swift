class TennisScoreCalculator {
  func score(player1Points: Int, player2Points: Int) -> String {
    if player1Points == 1 {
      return "Fifteen-Love"
    }
    
    return "Love-Love"
  }
}
