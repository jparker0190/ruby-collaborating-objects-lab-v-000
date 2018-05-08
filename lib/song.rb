class Song
  attr_accessor :name, :artist

   @@all = []

   def initialize(name)
     @name = name
   end

   def self.new_by_filename(filename)
    song = self.new
    song.title = filename.split(" - ")[1]
    song
   end

   def self.find_by_artist(artist)
     Song.all.select do | song |
       song.artist == artist
     end
   end

   def self.all
     @@all
   end

   def artist_name=(name)
     self.artist = Artist.find_or_create_by_name(name)
   end

   def save
     @@all << self
     self
   end
end
