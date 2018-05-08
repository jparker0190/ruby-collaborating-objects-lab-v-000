class Artist
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def save
    @songs << self
  end

  def add_song(song)
    @songs << song
  end

  def self.all
    @@all
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end
  def self.find_or_create_by_name(name)
    @@all.each  do |artist|
  			if artist.name == name 
  				return artist 
  			else 
  				return self.new(name)
  			end 
  		end 
  end
end
