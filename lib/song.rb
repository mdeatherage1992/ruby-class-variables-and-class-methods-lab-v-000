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


def self.artist_count
  artist_count = {}
  @@genres.each do |artist,count|
    if !artist_count[artist]
    artist_count[artist] = 1
  else
    artist_count[artist] += 1
  end
end
end

#def self.genre_count
  #(bins,freqs) = @@genres.histogram
#end
