class TennisScoreCalculator {
  func score(player1Points: Int, player2Points: Int) -> String {
    if player1Points > player2Points {
      if player1Points >= 4 {
        let delta = player1Points - player2Points
        if delta == 1 {
          return "Advantage player 1"
        }

        return "Win for player 1"
      }
    } else {

      if player2Points >= 4 {
        let delta = player2Points - player1Points
        if delta == 1 {
          return "Advantage player 2"
        }

        return "Win for player 2"
      }
    }

    var result = pointToScore(points: player1Points) + "-"

    if player1Points == player2Points {
      result += "All"
    } else {
      result += pointToScore(points: player2Points)
    }
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
