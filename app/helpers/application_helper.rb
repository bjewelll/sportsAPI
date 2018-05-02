module ApplicationHelper

  def _player_var(search, fname, lname, stat)
    data = MSF.msf_get_data("mlb", "2016-2017-regular", search, "json",
       "player" => "#{fname}-#{lname}", "playerstats" => stat)
    return data
  end

  def _team_var(city, name, search, stat)
    data = MSF.msf_get_data("mlb", "2016-2017-regular", search, "json",
       "team" => "#{city}-#{name}", "teamstats" => stat)
  end
end
