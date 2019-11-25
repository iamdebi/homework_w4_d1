require('minitest/autorun')
require('minitest/reporters')
require_relative('../models/game')

Minitest:: Reporters.use! Minitest::Reporters::SpecReporter.new

class GameTest<MiniTest::Test

  def test_rock_beats_scissors_1
    assert_equal("rock wins", Game.winner("rock", "scissors"))
  end

  def test_rock_beats_scissors_2
    assert_equal("rock wins", Game.winner("scissors", "rock"))
  end

  def test_paper_beats_rock_1
    assert_equal("paper wins", Game.winner("rock", "paper"))
  end

  def test_paper_beats_rock_2
    assert_equal("paper wins", Game.winner("paper", "rock"))
  end

  def test_scissors_beats_paper_1
    assert_equal("scissors wins", Game.winner("scissors", "paper"))
  end

  def test_scissors_beats_paper_2
    assert_equal("scissors wins", Game.winner("paper", "scissors"))
  end

  def test_rock_rock
    assert_equal("rock draw", Game.winner("rock", "rock"))
  end

  def test_paper_paper
    assert_equal("paper draw", Game.winner("paper", "paper"))
  end

  def test_scissors_scissors
    assert_equal("scissors draw", Game.winner("scissors", "scissors"))
  end

end
