require 'pry'
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
  @@genres.each do |genre,count|
    binding.pry
    if !genre_count[genre]
      genre[count] = 1
    else
      genre[count] += 1
    end
  end
  return genre_count
end


end

#def self.genre_count
  #(bins,freqs) = @@genres.histogram
#end
