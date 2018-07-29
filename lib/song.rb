class Song
  attr_accessor :name, :artist, :genre
  
  # class variables
  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_hash = {}
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    
    @@count += 1
    @@artists << @artist
    @@genres << @genre
  end

  def self.count
    @@count
  end
  
  def self.artists
    @@artists.uniq #=> uniq method removes duplicate elements
  end
  
  def self.genres
    @@genres.uniq
  end
  
  def self.genre_count
   @@genres.group_by {|h, x| h[x] += 1; h}
    
  end

end