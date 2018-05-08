class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def import(list_of_filename)
  files.each{|f| Song.new_by_filename(f)}
  end
end
