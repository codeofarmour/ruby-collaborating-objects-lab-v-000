class Artist 
  @@all = []
  attr_accessor :name, :songs 
  
  def initialize(name)
    @name = name
    @songs = songs 
  end
  
  def self.all 
    @@all 
  end
  
  def add_song(song)
    @songs << song 
  end
  
  def save
    @@all << self 
  end
end