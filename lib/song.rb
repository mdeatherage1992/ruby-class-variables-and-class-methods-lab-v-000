class Song
  attr_accessor :name,:artists,:genres
  @@count = 0
  @@genres = []
def initialize(name,artist,genre)
  @name = name
  @artist = artists
  @genre = genre
   @@count += 1
   @@genres << genre
end
def self.count
   @@count
 end
 def self.genre
   @@genre
 end




end
