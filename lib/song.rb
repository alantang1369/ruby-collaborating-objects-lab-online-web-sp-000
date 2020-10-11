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
    
      array = file.split(" - ")
      song = Song.new(array[1])
      
    end
  end  
end