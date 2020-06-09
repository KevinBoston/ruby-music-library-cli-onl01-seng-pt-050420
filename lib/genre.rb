class Genre
  extend Concerns::Findable
  attr_accessor :name
  attr_reader :songs
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
  end
  def self.all 
    @@all
  end
  def save
    @@all << self 
  end
  def self.destroy_all 
    @@all.clear
  end
  def self.create(name)
    n_genre = self.new(name)
    n_genre.save
    n_genre
  end
  def artists
    @songs.collect {|song|song.artist}.uniq 
  end
    
end