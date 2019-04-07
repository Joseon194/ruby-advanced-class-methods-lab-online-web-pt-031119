class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def Song.create
    song = self.new
    @@all << song
    song
  end
  
  def Song.new_by_name(name)
    song = self.new
    song.name = name
    song
  end
  
  def Song.create_by_name(name)
    song = self.new
    song.name = name
    @@all << song
    song
  end
  
  def Song.find_by_name(name)
    self.all.find{|x| x.name == name}
  end
  
  def Song.find_or_create_by_name(name)
    self.find_by_name(name) || self.create_by_name(name)
  end
  
  def Song.alphabetical
    @@all.sort_by{|x| x.name}
  end
  
  def Song.new_from_filename(name)
    song = self.new
    song.name = (name.split(" - ")[1].chomp(".mp3"))
    song.artist_name = (name.split(" - ")[0])
    song
  end
  
  def Song.create_from_filename(name)
    song = self.new 
end