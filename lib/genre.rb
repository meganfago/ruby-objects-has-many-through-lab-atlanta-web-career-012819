class Genre

  attr_reader :name, :songs, :artists

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select{|s| s.genre == self}
  end

def artists
  Song.all.map {|s| s.artist}

end

end
# - The `Genre` class needs an instance method, `#artists`, that iterates over the
#   genre's collection of songs and collects the artist that owns each song.
