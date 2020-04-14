class TennisScoreCalculator {
  func score(player1Points: Int, player2Points: Int) -> String {
    
    
    if let result = calcWinner1(player1Points: player1Points, player2Points: player2Points) {
      return "\(result) player 1"
    }
    
    if let result = calcWinner2(player1Points: player1Points, player2Points: player2Points) {
      return "\(result) player 2"
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
  
  private func calcWinner1(player1Points: Int, player2Points: Int) -> String? {
    if player1Points > player2Points && player1Points >= 4 {
      let delta = player1Points - player2Points
      if delta == 1 {
        return "Advantage"
      }

      return "Win for"
    }
    return nil
  }

  private func calcWinner2(player1Points: Int, player2Points: Int) -> String? {
    if player2Points > player1Points && player2Points >= 4 {
      let delta = player2Points - player1Points
      if delta == 1 {
        return "Advantage"
      }

      return "Win for"
    }
    return nil
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
