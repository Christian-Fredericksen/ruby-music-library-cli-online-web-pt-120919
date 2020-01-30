class Song
  attr_accessor :name, :artist
  @@all = []
  
  def initialize(name, artist = nil)
    @artist = artist
    @name = name
    @@all << self
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
  
  def self.create(name)
    @self = name
    @@all << @self
    @self
  end

end