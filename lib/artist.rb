class Artist
  attr_accessor :name
  def initialize(name)
    @name = name
    @songs = []
  end

  def self.find_or_create_by_name(name)
    @@all.each do |artist|
      if artist.name == name
        return artist
      else
        return self.new(name)
      end
    end
  end
end
