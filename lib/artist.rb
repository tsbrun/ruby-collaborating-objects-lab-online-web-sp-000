class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end

  def self.all
    @@all
  end

  def add_song(song)
    song.artist = self
    @songs << song
  end

  def self.find_or_create_by_name(name)
    # there must be a better way to do this...
    if !self.all.find {|artist| artist.name == name}
      song = Artist.new(name)
    else
      self.all.find {|artist| artist.name == name}
    end
  end

  def print_songs
    self.songs.map {|song| puts song.name}
  end

end
