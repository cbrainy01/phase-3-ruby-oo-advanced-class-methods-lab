require "pry"

# class Song
  
#   attr_accessor :name, :artist_name
#   ## class variable
#   @@all = []

  
#   ## class method 
#   def self.all
#      # this class method is an abstraction of the @@all class variable. Ensures that if variable name is changed, it wouldnt affect
#     # all the code that was attached to that particular variable name
#     @@all
#   end

#   # instance method
#   def save
#   #  when this method is called on an instance, that instance is shoveled into its class method of .all (remember, all 
#   #  is a class variable set to an array )
#     self.class.all << self
#   end

#   ##class method
#   def self.create
#     # when create class method is called: 

#     # create a variable to store a new song instance 
#     new_song = Song.new
#     # on the song instance, use the instance method .save to push the song instance into the class method of all
#     new_song.save
#     new_song
#   end

#   ##class method
#   def self.new_by_name(song_name)
#     # this class method creates a new instance but doesnt save it
#     song = self.new
#     song.name = song_name
#     song
#   end

#   def self.create_by_name(name)
#     # create new song instance using .create class method
#     song = self.create
#     # set name of that instance by using the attr_accessor for name
#     song.name = name
#     # return that song
#     song
#   end

#   def self.find_by_name(name)
#     finder = self.all.find { |song| song.name == name }
#   end

#   def self.find_or_create_by_name(name)
#     finder = self.find_by_name(name)
#     if finder == nil
#       create_by_name(name)
#     else finder
#     end
#   end

#   def self.alphabetical
#     self.all.sort_by { |song| song.name }
#   end

#   def self.new_from_filename(filename)

#     separated = filename.split(" - ")
#     song = separated[1]
#     plucked_song_name = song.split(".")[0]
#     plucked_artist_name = separated[0]
    
#     song = self.new
#     song.name = plucked_song_name
#     song.artist_name = plucked_artist_name
#     song
#   end

#   def self.create_from_filename(filename)
    
#     song = self.new_from_filename(filename)
#     song.save
#   end

#   def self.destroy_all
#     self.all.clear
#   end
#     binding.pry
# end

# require "pry"

class Player

  attr_accessor :name, :height, :college, :team
  
  @@players = []
  # create class constant of different conferences and their colleges

  def self.players
    @@players
  end

  def save
    self.class.players << self
  end

  def self.create_and_save_player(name, height, college, team)
  
    player = self.new
    player.name = name
    player.height = height
    player.college = college 
    player.team = team
    player.save 
  end

  def self.view_players
    self.players.each_with_index { |player, i| puts "Player #{i}: #{player}" }
  end

  def self.find_players_by_team(team)
    selected_players = self.players.select { |player| player.team == team }
    selected_players
  end
binding.pry
end