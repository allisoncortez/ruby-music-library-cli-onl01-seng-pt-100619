class Genre
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
  
  def self.create(genre)
    genre = self.new(genre)
    genre.save 
    genre
  end
  
  def add_song(song) 
    if song.genre == nil
      song.genre = self 
    end 
    songs << song unless songs.include?(song)
  end
  
  def artists
    songs.collect(&:artist).uniq
  end
  
end