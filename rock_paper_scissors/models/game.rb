class Game

  def self.winner(player1, player2)
    case
      when player1 == player2
        return "it's a draw"
      when player1 == "rock" && player2 == "paper"
        return "Player 2 wins"
      when player1 == "rock" && player2 == "scissors"
        return "Player 1 wins"
      when player1 = "scissors" && player2 == "paper"
        return "Player 1 wins"
      when player1 = "scissors" && player2 == "rock"
        return "Player 2 wins"
      when player1 ="paper" && player2 == "rock"
        return "Player 1 wins"
      when player1 ="paper" && player2 == "scissors"
        return "Player 2 wins"
    end
  end

end
