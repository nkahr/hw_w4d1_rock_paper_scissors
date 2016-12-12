require('minitest/autorun')
require('minitest/rg')
require_relative('../models/game.rb')

class GameSpec < MiniTest::Test

  def test_game_attr_readers()
    game = Game.new("rock", "scissors")
    assert_equal("rock", game.action1)
    assert_equal("scissors", game.action2)
  end

  def test_draw()
    game = Game.new("rock", "rock")
    assert_equal("Draw.", game.return_winner())
  end

  def test_scissors_winning()
    game = Game.new("scissors", "paper")
    assert_equal("Player 1 wins with Scissors!", game.return_winner())
  end

  def test_rock_winning()
    game = Game.new("scissors", "rock")
    assert_equal("Player 2 wins with Rock!", game.return_winner())
  end

  def test_paper_winning()
    game = Game.new("rock", "paper")
    assert_equal("Player 2 wins with Paper!", game.return_winner())
  end

end