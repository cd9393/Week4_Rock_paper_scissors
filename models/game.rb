class Game
  def initialize(hand1,hand2)
    @hand1 = hand1
    @hand2 = hand2
  end

  def play
    case @hand1
    when "rock"
      if @hand2 == "paper"
        "Paper covers rock"
      elsif @hand2 == "scissors"
        "Rock smashes scissors"
      elsif @hand2 == "rock"
        "It's a draw"
      end
    when "paper"
      if @hand2 == "paper"
        "It's a draw"
      elsif @hand2 == "scissors"
        "Scissors cut paper"
      elsif @hand2 == "rock"
        "Paper covers rock"
      end
    when "scissors"
      if @hand2 == "paper"
        "Scissors cut paper"
      elsif @hand2 == "scissors"
        "It's a draw"
      elsif @hand2 == "rock"
        "Rock smashes scissors"
      end
    end
  end

end
