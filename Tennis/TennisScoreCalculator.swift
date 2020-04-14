class TennisScoreCalculator {
  func score(player1Points: Int, player2Points: Int) -> String {
    if isAdvantageOrWinner(player1Points, player2Points) {
      let result = playerStatus(player1Points, player2Points)
      return "\(result) player \(winningPlayer(player1Points, player2Points))"
    }

    if player1Points == player2Points {
      return (player1Points >= 3 ? "Deuce" : pointToScore(player1Points) + "-All")
    }

    return "\(pointToScore(player1Points))-\(pointToScore(player2Points))"
  }

  private func isAdvantageOrWinner(_ player1Points: Int, _ player2Points: Int) -> Bool {
    max(player1Points, player2Points) >= 4 && player1Points != player2Points
  }
  
  private func winningPlayer(_ player1Points: Int, _ player2Points: Int) -> String {
    (player1Points > player2Points ? "1" : "2")
  }
    
  private func playerStatus(_ player1Points: Int, _ player2Points: Int) -> String {
    abs(player1Points - player2Points) == 1 ? "Advantage" : "Win for"
  }
  
  private func pointToScore(_ points: Int) -> String {
    let scores = [0: "Love", 1: "Fifteen", 2: "Thirty", 3: "Forty"]
    return scores[points] ?? "Love"
  }
}
