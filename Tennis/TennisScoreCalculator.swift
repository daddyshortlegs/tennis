class TennisScoreCalculator {
  func score(player1Points: Int, player2Points: Int) -> String {
    

    let maxPoints = max(player1Points, player2Points)    
    if player1Points > player2Points && maxPoints >= 4 {
      return advantageOrWinner(player1Points, player2Points) + " player 1"
    }

    if player2Points > player1Points && maxPoints >= 4 {
      return advantageOrWinner(player1Points, player2Points) + " player 2"
    }

    var result = pointToScore(points: player1Points) + "-"

    if player1Points == player2Points {
      if player1Points >= 3 {
        return "Deuce"
      } else {
        result += "All"
      }
    } else {
      result += pointToScore(points: player2Points)
    }
    return result
  }

  private func advantageOrWinner(_ player1Points: Int, _ player2Points: Int) -> String {
    abs(player1Points - player2Points) == 1 ? "Advantage" : "Win for"
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
