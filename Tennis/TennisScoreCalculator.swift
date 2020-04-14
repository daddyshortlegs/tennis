class TennisScoreCalculator {
  func score(player1Points: Int, player2Points: Int) -> String {
    let maxPoints = max(player1Points, player2Points)
    if player1Points > player2Points && maxPoints >= 4 {
      return advantageOrWinner(player1Points, player2Points) + " player 1"
    }

    if player2Points > player1Points && maxPoints >= 4 {
      return advantageOrWinner(player1Points, player2Points) + " player 2"
    }

    if player1Points == player2Points {
      if player1Points >= 3 {
        return "Deuce"
      }
      return pointToScore(player1Points) + "-All"
    }

    return "\(pointToScore(player1Points))-\(pointToScore(player2Points))"
  }

  private func advantageOrWinner(_ player1Points: Int, _ player2Points: Int) -> String {
    abs(player1Points - player2Points) == 1 ? "Advantage" : "Win for"
  }
  
  private func pointToScore(_ points: Int) -> String {
    let scores = [0: "Love", 1: "Fifteen", 2: "Thirty", 3: "Forty"]
    return scores[points] ?? "Love"
  }
}
