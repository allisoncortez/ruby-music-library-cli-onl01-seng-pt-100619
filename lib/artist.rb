class Artist 
  attr_accessor :name, :songs, :genres
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    
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
    artist.save
    artist
  end
  
  def add_song(song) 
    if song.artist == nil
      song.artist = self 
    end 
    songs << song unless songs.include?(song)
  end
  
  def genres
    songs.collect(&:genre).uniq
  end
end