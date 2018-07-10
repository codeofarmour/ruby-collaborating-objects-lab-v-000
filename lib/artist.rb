class Artist 
  
  attr_accessor :name, :songs 
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def self.find_or_create_by_name(name)
    if @@all.none? {|artist| artist.name == name}
      artist = Artist.new(name)
      @@all << artist 
      artist
    else
      @@all.find {|artist| artist.name == name}
    end
  end
  
  def add_song(song)
    @songs << song 
  end
  
  def save
    @@all << self 
  end
end