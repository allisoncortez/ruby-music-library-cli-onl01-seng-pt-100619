class Artist 
  attr_accessor :name, :songs
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    save
  end
  
  def self.all 
    @@all 
  end 
  
  def self.destroy_all 
    @@all = []
  end
  
  def save 
    @@all << self 
  end
  
  def self.create(artist)
    artist = self.new(artist)
  end
  
  def add_song(song) 
    if song.artist == nil
      song.artist = self 
      songs << song 
    end 
    songs << song unless songs.include?(song)
  end
  
end