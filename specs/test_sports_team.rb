require ('minitest/autorun')
require_relative('../sports_team.rb')

class TestSportsTeam < MiniTest::Test

  def setup
    @team = SportsTeam.new("Real Madrid", ["Ronaldo", "Benzema", "Bale"], "Zidane")

  end

  def test_team_name
    assert_equal("Real Madrid", @team.team_name)
  end

end
