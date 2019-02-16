require 'pry'

def game_hash
  
  game_hash = {  
            :home => {
              :team_name => "Brooklyn Nets", 
              :colors => ["Black", "White"], 
              :players => {
                "Alan Anderson" => {
                  :number => 0,
                  :shoe => 16, 
                  :points => 22, 
                  :rebounds => 12, 
                  :assists => 12,
                  :steals => 3, 
                  :blocks => 1, 
                  :slam_dunks => 1},
                "Reggie Evans" => {
                  :number => 30,
                  :shoe => 14, 
                  :points => 12, 
                  :rebounds => 12, 
                  :assists => 12,
                  :steals => 12, 
                  :blocks => 12, 
                  :slam_dunks => 7},
                "Brook Lopez" => {
                  :number => 11,
                  :shoe => 17, 
                  :points => 17, 
                  :rebounds => 19, 
                  :assists => 10,
                  :steals => 3, 
                  :blocks => 1, 
                  :slam_dunks => 15},
                "Mason Plumlee" => {
                  :number => 1,
                  :shoe => 19, 
                  :points => 26, 
                  :rebounds => 12, 
                  :assists => 6,
                  :steals => 3, 
                  :blocks => 8, 
                  :slam_dunks => 5},
                "Jason Terry" => {
                  :number => 31,
                  :shoe => 15, 
                  :points => 19, 
                  :rebounds => 2, 
                  :assists => 2,
                  :steals => 4, 
                  :blocks => 11, 
                  :slam_dunks => 1}
              }
  }, 
            :away => {
              :team_name => "Charlotte Hornets",
              :colors => ["Turquoise", "Purple"],
              :players => {
                "Jeff Adrien" => {
                  :number => 4,
                  :shoe => 18, 
                  :points => 10, 
                  :rebounds => 1, 
                  :assists => 1,
                  :steals => 2, 
                  :blocks => 7, 
                  :slam_dunks => 2},
                "Bismak Biyombo" => {
                  :number => 0,
                  :shoe => 16,  
                  :points => 12, 
                  :rebounds => 4, 
                  :assists => 7,
                  :steals => 7, 
                  :blocks => 15, 
                  :slam_dunks => 10},
                "DeSagna Diop" => {
                  :number => 2,
                  :shoe => 14, 
                  :points => 24, 
                  :rebounds => 12, 
                  :assists => 12,
                  :steals => 4, 
                  :blocks => 5, 
                  :slam_dunks => 5},
                "Ben Gordon" => {
                  :number => 8,
                  :shoe => 15, 
                  :points => 33, 
                  :rebounds => 3, 
                  :assists => 2,
                  :steals => 1, 
                  :blocks => 1, 
                  :slam_dunks => 0},
                "Brendan Haywood" => {
                  :number => 33,
                  :shoe => 15, 
                  :points => 6, 
                  :rebounds => 12, 
                  :assists => 12,
                  :steals => 22, 
                  :blocks => 5, 
                  :slam_dunks => 12}
                }
            }
  
    
  }
  
end
            
  

##  def num_points_scored(player_name)
##    if game_hash[:home][:players].keys.include?(player_name)
##        game_hash[:home][:players][player_name][:points]
##    elsif game_hash[:away][:players].keys.include?(player_name)
##        game_hash[:away][:players][player_name][:points]
##     else
##    end
##  end

## ALTERNATIVE SOLUTION - NOT TESTING CORRECTLY

def num_points_scored(player_name)
    points = 0
    game_hash.each do |location, team_data|
    team_data.each do |attributes, data|
      if data.is_a?(Hash) && data.keys.include?(player_name)
        data[player_name].each do |stats, value|
          if stats == :points 
            points = value
            
          end
        end
      end
    end
    end
    points
end


##  def shoe_size(player_name)
##    if game_hash[:home][:players].keys.include?(player_name)
##      game_hash[:home]

def shoe_size(player_name)
  shoe_sizes = 0 
  game_hash.each do |location, team_data|
    team_data.each do |attributes, data|
      if data.is_a?(Hash) && data.keys.include?(player_name)
        data[player_name].each do |stats, value|
          if stats == :shoe
            shoe_sizes = value
          end
        end
      end
    end
  end
  shoe_sizes
end

def team_colors(team_name)
  colors = []
  game_hash.each do |location, team_data|
    team_data.each do |attributes, data|
      if team_data.values.include?(team_name) && data.is_a?(Array)  
        data.each do |value|
          colors << value
        end
      end
    end
  end
  colors
end

def team_names
  team_name_ary = []
  game_hash.each do |location, team_data|
    team_data.each do |stats, data|
      if stats == :team_name
        team_name_ary << data
      end
    end
  end
  team_name_ary
end
        

def player_numbers(team_name)
  jersey_numbers = []
  game_hash.each do |location, team_data|
    team_data.each do |attributes, data|
      if team_data.values.include?(team_name) && data.is_a?(Hash)
        data.each do |player, stat_list|
          stat_list.each do |stat, value|
            if stat == :number
              jersey_numbers << value
            end
          end
        end
      end
    end
  end
  jersey_numbers
end

  
def player_stats(player_name)
  player_stat_hash = {}
  game_hash.each do |location, team_data|
    team_data.each do |attributes, data|
      if data.is_a?(Hash)
        data.each do |player, stats|
          if player == player_name
            player_stat_hash = stats
          end
        end
      end
    end
  end
  player_stat_hash
end

  

def big_shoe_rebounds
  shoe_size = 0
  largest_shoe_rebounds = 0
  game_hash.each do |location, team_data|
    team_data.each do |attributes, data|
      if data.is_a?(Hash)
        data.each do |player, stats|
          stats.each do |stat, value|
            if stat == :shoe && value > shoe_size
              shoe_size = value
            end
            if stat == :rebounds
              largest_shoe_rebounds = value 
            end
          end
        end
      end
    end
  end
  largest_shoe_rebounds
end
    
arr1 = [5,4,7,8,12,11,5]
arr2 = [4, 22, 8, 5, 6]


  
  
def duplicates(arr1, arr2)
  arr1.uniq!
  arr2.uniq!
  duplicate_nums = []
  arr1.each do |number1|
    arr2.each do |number2|
      if number1 == number2
        duplicate_nums << number1
      end
    end
  end
  duplicate_nums
end
  
# y = duplicates(arr1, arr2)
# puts y

def duplicates_2(arr1, arr2)
  arr1.uniq!
  arr2.uniq!
  num_hash = {}
  num_arr = []
  arr= arr1 + arr2
  arr.each do |number|
    if !num_hash.keys.include?(number)
      num_hash[number] = 1
    else
      num_hash[number] = num_hash[number] += 1
    end
  end
  
  num_hash.each do |key, value|
    if value == 2 
      num_arr << key
    end
  end
  num_arr
end

# y = duplicates_2(arr1, arr2)
# puts y


arr = [0, 2, 3, 4, 5, 6, 7, 8, 9]

def missing_num(arr)
  arr-my_arr
    
      
end 


y = missing_num(arr)
puts y


hash = {:christoph => 37}

hash[:christoph] = 30




