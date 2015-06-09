require 'pry'

def game_hash
    {
        :home => { :team_name => "Charlotte Hornets",
                   :colors => ["Turquoise", "Purple"],
                   :players => [
                       {:player_name => "Jeff Adrien",
                        :number => 4,
                        :shoe => 18,
                        :points => 10,
                        :rebounds => 1,
                        :assists => 1,
                        :steals => 2,
                        :blocks => 7,
                        :slam_dunks => 2
                       },
                       {:player_name => "Bismak Biyombo",
                        :number => 0,
                        :shoe => 16,
                        :points => 12,
                        :rebounds => 4,
                        :assists => 7,
                        :steals => 7,
                        :blocks => 15,
                        :slam_dunks => 10
                       },
                       {:player_name => "DeSagna Diop",
                        :number => 2,
                        :shoe => 14,
                        :points => 24,
                        :rebounds => 12,
                        :assists => 12,
                        :steals => 4,
                        :blocks => 5,
                        :slam_dunks => 5
                       },
                       {:player_name => "Ben Gordon",
                        :number => 8,
                        :shoe => 15,
                        :points => 33,
                        :rebounds => 3,
                        :assists => 2,
                        :steals => 1,
                        :blocks => 1,
                        :slam_dunks => 0
                       },
                       {:player_name => "Brendan Haywood",
                        :number => 33,
                        :shoe => 15,
                        :points => 6,
                        :rebounds => 12,
                        :assists => 12,
                        :steals => 22,
                        :blocks => 5,
                        :slam_dunks => 12
                       }
                   ]
        },
        :away => { :team_name => "Brooklyn Nets",
                   :colors => ["Black", "White"],
                   :players => [
                       {:player_name => "Alan Anderson",
                        :number => 0,
                        :shoe => 16,
                        :points => 22,
                        :rebounds => 12,
                        :assists => 12,
                        :steals => 3,
                        :blocks => 1,
                        :slam_dunks => 1
                       },
                       {:player_name => "Reggie Evans",
                        :number => 30,
                        :shoe => 14,
                        :points => 12,
                        :rebounds => 12,
                        :assists => 12,
                        :steals => 12,
                        :blocks => 12,
                        :slam_dunks => 7
                       },
                       {:player_name => "Brook Lopez",
                        :number => 11,
                        :shoe => 17,
                        :points => 17,
                        :rebounds => 19,
                        :assists => 10,
                        :steals => 3,
                        :blocks => 1,
                        :slam_dunks => 15
                       },
                       {:player_name => "Mason Plumlee",
                        :number => 1,
                        :shoe => 19,
                        :points => 26,
                        :rebounds => 12,
                        :assists => 6,
                        :steals => 3,
                        :blocks => 8,
                        :slam_dunks => 5
                       },
                       {:player_name => "Jason Terry",
                        :number => 31,
                        :shoe => 15,
                        :points => 19,
                        :rebounds => 2,
                        :assists => 2,
                        :steals => 4,
                        :blocks => 11,
                        :slam_dunks => 1
                       }
                   ]
        }
    }
end

def num_points_scored(player)

    points = []

    game_hash.each do |team_status, team_properties|
        team_properties[:players].each do |player_hash|
            if player_hash[:player_name] == player
                points << player_hash[:points]
            end
        end
    end

    if points.length == 1
        points.first
    else
      points
    end

end

def shoe_size(player)

    shoe_sizes = []

    game_hash.each do |team_status, team_properties|
        team_properties[:players].each do |player_hash|
            if player_hash[:player_name] == player
                shoe_sizes << player_hash[:shoe]
            end
        end
    end

    if shoe_sizes.length == 1
      shoe_sizes.first
    else
      shoe_sizes
    end

end

def team_colors(team)

  team_colors = nil

  game_hash.each do |team_status, team_properties|
    if team_properties[:team_name] == team
      team_colors = team_properties[:colors]
    end
  end

  team_colors

end

def team_names

  names = []

  game_hash.each do |team_status, team_properties|
    names << team_properties[:team_name]
  end

  names

end

def player_numbers(team)

  jerseys = []

  game_hash.each do |team_status, team_properties|
    if team_properties[:team_name] == team 
      team_properties[:players].each do |player_hash|
        jerseys << player_hash[:number]
      end
    end
  end

  jerseys
end

def player_stats(player)

  stats = nil

  game_hash.each do |team_status, team_properties|
    team_properties[:players].each do |player_hash|
      if player_hash[:player_name] == player
        stats = player_hash
      end
    end
  end

  stats.delete(:player_name)
  stats

end

def big_shoe_rebounds

  sorted_array = []

  #dive into game hash
  game_hash.each do |team_status, team_properties|

    team_properties[:players].each do |player_hash|
      sorted_array << player_hash
    end

  end

  sorted_array.sort_by!{|player_hash| player_hash[:shoe]}.last[:rebounds]


end



