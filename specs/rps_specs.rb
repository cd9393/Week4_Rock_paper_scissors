require('minitest/autorun')
require("minitest/rg")
require_relative("../models/game")

class GameTest < Minitest::Test
  def setup
    @game = Game.new("rock","scissors")
    @game1 = Game.new("rock","paper")
    @game2 = Game.new("rock","rock")
    @game3 = Game.new("paper","rock")
    @game4 = Game.new("paper","scissors")
    @game5 = Game.new("paper","paper")
    @game6 = Game.new("scissors","paper")
    @game7 = Game.new("scissors","rock")
    @game8 = Game.new("scissors","scissors")
  end

  def test_game_logic__choose__rock
    assert_equal("Rock smashes scissors",@game.play)
  end
  def test_game_logic__choose__rock__paper
    assert_equal("Paper covers rock",@game1.play)
  end

  def test_game_logic__choose__rock__rock
    assert_equal("It's a draw",@game2.play)
  end

  def test_game_logic__choose__paper__rock
    assert_equal("Paper covers rock",@game3.play)
  end

  def test_game_logic__choose__paper__scissors
    assert_equal("Scissors cut paper",@game4.play)
  end

  def test_game_logic__choose__paper__paper
    assert_equal("It's a draw",@game5.play)
  end

  def test_game_logic__choose__scissor__paper
    assert_equal("Scissors cut paper",@game6.play)
  end

  def test_game_logic__choose__scissor__rock
    assert_equal("Rock smashes scissors",@game7.play)
  end

  def test_game_logic__choose__scissor__scissor
    assert_equal("It's a draw",@game8.play)
  end


end
