class SportsTeam

  attr_reader :team_name, :players, :points
  attr_accessor :coach

  def initialize (team_name, players, coach)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = 0
  end

  # def team_name
  #   return @team_name
  # end
  #
  # def players
  #   return @players
  # end
  #
  # def coach
  #   return @coach
  # end
  #
  # def set_coach_name(name)
  #   @coach = name
  # end


  def add_new_player(name)
    @players << name
  end

  def player_in_team(name)
    return @players.include?(name)
  end

  def team_has_won_or_lost(win)
    @points += 1 if win
  end


end
