class Artist
    @@all = []

    attr_accessor :name 

    def initialize(name)
        @name = name 
        save
    end

    def save 
        @@all << self
    end
    
    def self.all
        @@all
    end
    
    def songs	
        Song.all.each do |song|	
            if song.artist == self	
                @songs << song	
            end	
        end	
        @songs	
    end


end

