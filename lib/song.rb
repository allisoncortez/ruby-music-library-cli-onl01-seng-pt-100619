require 'pry' 
class Song 
  attr_accessor :name
  attr_reader :artist
  @@all = []

# Song #artist= invokes Artist#add_song to add itself to the artist's collection of songs (artist has many songs)


  def initialize(name, artist = nil)
    @name = name
    @artist = artist
    
    
    # if artist != nil 
    #   artist.add_song(self)
    #   self.artist = artist
    # end
  end
  
  
  def artist=(artist)
    @artist = artist
    artist.add_song(self)
  end
  
  
  def self.all
    @@all 
  end
  
  def self.destroy_all 
    @@all.clear
  end
  
  def save 
    @@all << self
  end
  
  def self.create(song)
    #initializes, saves, and returns the song
    song = self.new(song)
    song.save
    song
  end
  
end