class UsersController < ApplicationController
  def index
    if current_user
      redirect_to baseball_index_path
    end
    puts "************************"
    #data = MSF.msf_get_data("mlb", "2016-2017-regular", "cumulative_player_stats", "json",
		#	"player" => "chase-utley", "playerstats" => "HR")
    #data = MSF.msf_get_data('mlb', '2016', 'player_gamelogs', 'json', 'player' =>'chase-utley')
    #team={list-of-teams}
    #data = MSF.msf_get_data('mlb', '2017-regular', 'overall_team_standings' 'json' )
    #puts data
    puts "************************"
  end

  def show
    #instruction page

  end



end
