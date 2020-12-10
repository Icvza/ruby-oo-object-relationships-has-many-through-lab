class Genre 
    attr_accessor :name, :song, :artist

    @@all = []

    def initialize (name)
        @name = name 
        @song = song
        @artist = artist
        save
    end

    def save 
        @@all << self
    end

    def self.all 
        @@all
    end 

    def songs
        Song.all { |genre| genre.song }
    end

    def artists
        Song.all.collect { |song| song.artist }
    end


end

