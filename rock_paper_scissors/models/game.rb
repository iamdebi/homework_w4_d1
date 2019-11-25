class Game

  def self.winner(item1, item2)
    case item1
    when "rock"
      case item2
      when  "paper"
        return "paper wins"
      when "scissors"
        return "rock wins"
      when "rock"
        return "rock draw"
      end
    when "scissors"
      case item2
      when "paper"
        return "scissors wins"
      when "rock"
        return "rock wins"
      when "scissors"
        return "scissors draw"
      end
    when "paper"
      case item2
      when "rock"
        return "paper wins"
      when "scissors"
        return "scissors wins"
      when "paper"
        return "paper draw"
      end
    end
  end

end
