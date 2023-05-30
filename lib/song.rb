class Song
    @@count = 0
    @@artists = []
    @@genres = []

    attr_accessor :name, :artists, :genres
    def initialize(name,artist,genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre
    end

    def self.count 
        @@count = 3
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        @@genres.tally
    end

    def self.artist_count
        @@artists.tally
    end

end

# Creating instances of the Song class
song1 = Song.new("Song 1", "Artist 1", "Genre 1")
song2 = Song.new("Song 2", "Artist 2", "Genre 2")
song3 = Song.new("Song 3", "Artist 1", "Genre 1")

# Using the class methods to get information
puts "Total number of songs: #{Song.count}"


puts "Unique artists: #{Song.artists}"


puts "Unique genres: #{Song.genres}"


puts "Genre count: #{Song.genre_count}"


puts "Artist count: #{Song.artist_count}"

