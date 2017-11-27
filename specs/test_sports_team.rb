require ('minitest/autorun')
require_relative('../sports_team.rb')

class TestSportsTeam < MiniTest::Test

  def setup
    @team = SportsTeam.new("Real Madrid", ["Ronaldo", "Benzema", "Bale"], "Zidane")

  end

  def test_team_name
    assert_equal("Real Madrid", @team.team_name)
  end

  def test_players
    assert_equal(["Ronaldo", "Benzema", "Bale"], @team.players)
  end

  def test_coach
    assert_equal("Zidane", @team.coach)
  end

  def test_set_coach_name
    @team.coach=("Alex Ferguson")
    assert_equal("Alex Ferguson", @team.coach)
  end

  def test_add_new_player
    @team.add_new_player("Modric")
    assert_equal((4), @team.players.length)
  end

  def test_player_in_team
    assert_equal(true, @team.player_in_team("Ronaldo"))
    assert_equal(false, @team.player_in_team("Eric"))
  end

end
