class TennisScoreCalculator {
  func score(player1Points: Int, player2Points: Int) -> String {
    
    if player1Points == 4 {
      return "Win for player 1"
    }
    
    var result = pointToScore(points: player1Points) + "-"
    result += pointToScore(points: player2Points)
    return result
  }
  
  private func pointToScore(points: Int) -> String {
    if points == 1 {
      return "Fifteen"
    }

    if points == 2 {
      return "Thirty"
    }

    if points == 3 {
      return "Forty"
    }

    return "Love"
  }
}
