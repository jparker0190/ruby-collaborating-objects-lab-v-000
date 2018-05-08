class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def import(list_of_filename)
    lfiles.each{|f| Song.new_by_filename(f)}
  end

  def files
  @files ||= Dir.glob("#{path}/*.mp3").collect{ |f| f.gsub("#{path}/", "") }
end
end
