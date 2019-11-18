class Song 
  attr_accessor :name, :artist
@@all = []

  def initialize(name, artist = nil)
    @name = name
    @artist = artist
    save
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
    
  
  # describe ".create" do
  #   it "initializes, saves, and returns the song" do
  #     created_song = Song.create("Kaohsiung Christmas")

  #     expect(Song.all).to include(created_song)
  #   end
  end
  
end