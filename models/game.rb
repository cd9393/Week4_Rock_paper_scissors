class Game
  def initialize(hand1,hand2)
    @hand1 = hand1
    @hand2 = hand2
  end

  def play()
    case @hand1
    when rock
      if @hand2 == "paper"
        "Paper covers rock"
      elsif @hand2 == "scissors"
        "Rock smashes scissors"
      elsif @hand2

    end
  end
end
