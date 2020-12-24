require 'pry'

class Artist

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_song(name, genre)
        song = Song.new(name, self, genre)
    end

    def songs
        #binding.pry
        Song.all.select{|song| song.artist == self}
    end

    def genres
        song_array = Song.all.select{|song| song.artist == self}
        song_array.collect{|song| song.genre}
    end
end
