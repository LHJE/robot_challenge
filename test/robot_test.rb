require 'minitest/autorun'
require 'minitest/pride'
require './lib/robot'

class RobotTest < Minitest::Test

  def test_it_exists
    robot1 = Robot.new("GLRLG")

    assert_instance_of Robot, robot1
  end

  def test_it_has_a_path
    robot1 = Robot.new("GLRLG")

    assert_equal "GLRLG", robot1.path
  end

  def test_it_has_good_instructions
    robot1 = Robot.new("GR RLG")

    assert_equal true, robot1.good_path
  end

  def test_it_has_bad_instructions
    robot1 = Robot.new("GLRNBLG")

    assert_equal false, robot1.good_path
  end

  def test_it_will_return_to_start
    robot1 = Robot.new("GRGRGRG")

    assert_equal true, robot1.will_return_to_start
  end


end
