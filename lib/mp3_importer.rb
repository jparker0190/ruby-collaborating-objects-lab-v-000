class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def import(list_of_filename)
    list_of_filename.each do |filename|
      Song.new_by_filename(filename)
    end
  end

  def files
  @files ||= Dir.glob("#{path}/*.mp3").collect{ |f| f.gsub("#{path}/", "") }
end
end
