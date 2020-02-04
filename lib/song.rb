class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  def song.create
    song = self.new 
    song
  end
    
  def song.new_by_name(name)
    song = self.new 
    song.name = name
    song
  end
  
  def song.create_by_name(name)
    song = self.new 
    song.name = name
    @@all << song
    song
  end
  
  def self.find_by_name(name)
    @@all.find{|x| x.name == name}
  end
  
  def song.find_or_create_by_name
    self.find_by_name(name) || self.create_by_name(name)
  end
  
  def song.alphabetical
    
    
