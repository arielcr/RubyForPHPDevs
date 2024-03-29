require 'minitest/autorun'
require_relative '../lib/bowling/game'

class BowlingTest < Minitest::Test
  def setup
    @game = Game.new
  end

  def teardown

  end

  def test_gutter_ball_gives_zero_score
    @game.play 0

    assert_equal 0, @game.score
  end

  def test_regular_throw_gives_regular_score
    @game.play 3

    assert_equal 3, @game.score
  end

  def test_spare_gives_incremented_score
    @game.play 4
    @game.play 6
    @game.play 2

    assert_equal 14, @game.score
  end

  def test_strike_gives_incremented_score
    @game.play 10
    @game.play 6
    @game.play 2

    assert_equal 26, @game.score
  end

end