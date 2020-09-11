# Write your code below game_hash
require "pry"
def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end


# def player_helper
#   game_hash[:home][:players].merge(game_hash[:away][:players])
# end

# def home_team_players
#   game_hash[:home][:players]
# end
 
# puts home_team_players

# Write code here
#knows the number of points scored by each player 
#Think about how you will find the shoe size of the correct player. How can you check and see if a player's name matches the name that has been passed into the method as an argument?
# binding.pry 

def num_points_scored(player_name)
  game_hash.each do |place, team|
    team.each do |attribute, data|
      if attribute == :players
        data.each do |player|
          if player[:player_name] == player_name
        return player[:points]
      end
    end
  end
end
end
end


# def shoe_size
# #knows the shoe size of each player 
def shoe_size(player_name)
  game_hash.each do |place, team|
    team.each do |attribute, data|
      if attribute == :players 
        data.each do |player|
          if player[:player_name]== player_name
            return player[:shoe]
          end
        end
      end
    end
  end
end

# def team_colors
# #knows the Brooklyn Nets colors are Black and White 
# #knows the Charlotte Hornets colors are Turquoise and Purple 
def team_colors(team_name)
  game_hash.each do |place, team|
    if team[:team_name] == team_name
      return team[:colors]
    end
  end
end


#Build a method, team_names, that operates on the game Hash
#to return an Array of the team names.
# def team_names
#   game_hash.each do |place, team|
#     team.each do |attribute, data|
#       if attribute == :team_name
#   return game_hash[1]
# end
# end
# end
# end

# def team_names
#   game_hash.map do |place, team|
#     team.map do |attribute, data|
#       if attribute == :team_name
#         puts :team_name
#       end
#     end
#   end
# end
def team_names
  new_array = []
  new_array<< game_hash[:home][:team_name]
  new_array<< game_hash[:away][:team_name]
  return new_array
end


# def player_numbers
# #returns the player jersey numbers 
def player_numbers(team_name)
  game_hash.map do |place, team|
    if team[:team_name] == team_name 
      team.each do |attribute, data|
        if attribute == :players
          data.each do |player|
            player[:number]
          end
        end
      end
    end
  end
end


# def player_stats
# #returns all stats for a given player 
def player_stats(player_name)
  new_hash = {}

  game_hash.each do |place, team|
    team.each do |attribute, data|
      if attribute == :players 
        data.each do |player|
          if player[:player_name] == player_name
            new_hash = player
          end
        end
      end
    end
  end
end

# def big_shoe_rebounds
# #returns the number of rebounds of the player with the biggest shoe size 
#Build a method, big_shoe_rebounds, that will return the number of rebounds associated with the player that has the largest shoe size. Break this one down into steps:

#First, find the player with the largest shoe size
#Then, return that player's number of rebounds
#Remember to think about return values here.

def big_shoe_rebounds
  game_hash.each do |place, team|
    team.each do |attribute, data|
      if attribute == :players
        data.each do |player|
          player.max_by{|k| k[:shoe:] }
          player.max_by{|k| k[:shoe:] }[:name]
          