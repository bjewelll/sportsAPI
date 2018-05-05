class BaseballController < ApplicationController
  def index
    @favorites = Favorite.all
    @data = MSF.msf_get_data('mlb', '2017-regular', 'overall_team_standings' 'json' )
    @team = @data.select{ |item| item == team}
    @city = @team.city
    @name = @team.name
  end

  def show
    @favorites = Favorite.all

  end

  def player
    @player_info = player_var(player_params)
  end

  def team
    @team_info = team_var(team_params)
  end


    private
  def player_params
    params.require(:users).permit(:search, :fname, :lname, :stat, )
  end

  def team_params
    params.require(:users).permit(:city, :name, :search, :stat, )
  end
end
