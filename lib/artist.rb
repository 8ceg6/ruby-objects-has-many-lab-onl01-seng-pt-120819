require 'pry'
class Artist 
  attr_accessor :name
  
    
    @@song_count = 0 
  
  def initialize(name) 
      @name = name 
      @songs = []
  end  
  
  def songs
      Song.all.select do |song|
        song.artist == self 
      end 
  end 
  
  def add_song(song) 
      @songs << song 
      song.artist = self
     
      
 end
 
 def add_song_by_name(song_name)
      new_song = Song.new(song_name)
      self.add_song(new_song)
    
    # @songs << new_song 
    # new_song.artist = self
    # @@song_count += 1
    # binding.pry
 end
 
 def self.song_count
      Song.all.count 
      
 end 
end 









