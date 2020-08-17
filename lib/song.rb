require "pry"

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

  def self.new_by_filename(filename)
    # parse filename to find 1) song name [1] and 2) artist name [0]
    filename.split(" - ")
    binding.pry
    # create new song instance
    # associate new song with artist
    # return new song instance
  end
end
