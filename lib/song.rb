class Song 
  attr_accessor :name, :artist
  @@all = []
  def initialize(name)
    @name = name 
    @@all << self
  end
  
  def self.all 
    @@all 
  end  
  
  def self.new_by_new_filename
    MP3Importer.files.each  do |file|
      array = file.split(" - ")
      song = Song.new(array[1])
      song
    end
  end  
end