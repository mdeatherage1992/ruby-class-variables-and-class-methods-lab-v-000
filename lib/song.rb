class Song
  attr_accessor :name,:artist,:genre
  @@count = 0
  @@genres = []
  @@artists = []
def initialize(name,artist,genre)
  @name = name
  @artist = artist
  @genre = genre
   @@count += 1
   @@genres << genre
   @@artists << artist
end
def self.count
   @@count
 end
 def self.genres
   @@genres.uniq
 end
def self.artists
  @@artists.uniq
end


def self.genre_count
  genre_count = {}
  @@genres.each do |genre|
    if !genre
      genre = 1
    else
      genre += 1

#def self.genre_count
  #(bins,freqs) = @@genres.histogram
#end
