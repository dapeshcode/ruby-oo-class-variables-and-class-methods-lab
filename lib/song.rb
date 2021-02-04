require 'pry'

class Song 

    @@count = 0
    @@all = []
    @@genres = []
    @@artists = []

    attr_reader :name, :artist, :genre

    def initialize(name, artist, genre)
        @@count += 1
        self.name = name
        self.artist = artist 
        self.genre = genre
        @@all << self
        @@artists << artist
        @@genres << genre
    end 

    def name=(name)
        @name = name
    end 

    def artist=(artist)
        @artist = artist
    end 

    def genre=(genre)
        @genre = genre
    end

    def self.count 
        @@count 
    end 

    def self.artists
        @@artists.uniq
    end 

    def self.genres
        @@genres.uniq
    end 

    def self.genre_count
        genre_count = {}
        @@genres.each do |genre|
            if genre_count[genre]
                genre_count[genre] += 1
            else 
                genre_count[genre] = 1 
            end 
        end
        genre_count
    end 

    def self.artist_count
        artist_count = {}
        @@artists.each do |artist|
            if artist_count[artist]
                artist_count[artist] += 1
            else 
                artist_count[artist] = 1
            end 
        end 
        artist_count
    end 

end


test_song = Song.new("name", "artist", "genre")
0