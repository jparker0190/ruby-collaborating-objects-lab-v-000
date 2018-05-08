class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def import
    files.each do |f|
      Song.new_by_filename(f)
    end
  end
  
  def files
  @files ||= Dir.glob("#{path}/*.mp3").collect{ |f| f.gsub("#{path}/", "") }
end
end
