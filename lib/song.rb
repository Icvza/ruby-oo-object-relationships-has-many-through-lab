class Song
    @@all = []

    attr_accessor :name, :artisit, :genre

    def initalize(name, artisit, genre)
        @name = name 
        @artisit = artisit
        @genre = genre
        save
    end

    def save 
        @@all << self 
    end 


end