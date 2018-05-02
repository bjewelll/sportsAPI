class BaseballController < ApplicationController
  def index
    @favs = Favorite.all
  end

  def show
    @favs = Favorite.all
    
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
