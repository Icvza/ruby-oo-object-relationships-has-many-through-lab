
class Artist
  attr_accessor :name, :song, :genre
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @genre = genre
    save
  end
  

  def save 
    @@all << self
  end

  def self.all 
    @@all
  end

  def songs
    Song.all.select { |song| song.artist == self}
  end

  def new_song(song, genre)
    Song.new(name, self, genre)
  end

  def genres
    songs.map {|song| song.genre}
  end



  # def genres
  #   self.songs.collect {|song| song.genre}
  # end
  # def songs
  #   Song.all.select {|song| song.name == self }
  # end

end
