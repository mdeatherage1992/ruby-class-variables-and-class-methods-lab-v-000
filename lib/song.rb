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


def artist_count
  (@@artists,freq) = data.histogram
end

def genre_count
end

end
