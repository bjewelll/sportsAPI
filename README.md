# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation
####library
@valid_feeds = [
                   'current_season',
        p            'cumulative_player_stats',
        t          'full_game_schedule',
        t          'daily_game_schedule',
        p           'daily_player_stats',
                   'game_playbyplay',
                   'game_boxscore',
                   'scoreboard',
                   'player_gamelogs',
        t           'team_gamelogs',
                 'roster_players',
                   'game_startinglineup',
                   'active_players',
                   'player_injuries',
                   'latest_updates',
                   'daily_dfs',
                   'overall_team_standings',
                   'conference_team_standings',
                   'division_team_standings',
                   'playoff_team_standings'
               ]

####SEARCH
               data = MSF.msf_get_data("mlb", "2016-2017-regular", "cumulative_player_stats", "json",
                  "player" => "chase-utley", "playerstats" => "HR")
####RETURNs

               response = #<Net::HTTPOK:0x000000047968d8>
               {"cumulativeplayerstats"=>{"lastUpdatedOn"=>"2018-04-13 5:11:37 PM", "playerstatsentry"=>[{"player"=>{"ID"=>"11360", "LastName"=>"Utley", "FirstName"=>"Chase", "JerseyNumber"=>"26", "Position"=>"2B"}, "team"=>{"ID"=>"137", "City"=>"Los Angeles", "Name"=>"Dodgers", "Abbreviation"=>"LAD"}, "stats"=>{"GamesPlayed"=>{"@abbreviation"=>"G", "#text"=>"160"}, "Homeruns"=>{"@category"=>"Batting", "@abbreviation"=>"HR", "#text"=>"14"}}}]}}


* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
