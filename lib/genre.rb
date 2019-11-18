class Genre
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name
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
    
  end
  
end