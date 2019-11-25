class Game

  def self.winner(item1, item2)
    case item1
    when "rock"
      case item2
      when  "paper"
        return "paper wins"
      when "scissors"
        return "rock wins"
      end
    when "scissors"
      case item2
      when "paper"
        return "scissors wins"
      when "rock"
        return "rock wins"
      end
    when "paper"
      case item2
      when "rock"
        return "paper wins"
      when "scissors"
        return "scissors wins"
      end
    end
  end

end
