class Song
  attr_accessor :name, :artist, :genre
  
  # class variables
  @@count = 0
  @@artists = []
  @@genres = []
  
  
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
    #keys => names of each genre
    #values => number of songs that have that genre
    
    @genres.each_with_object(Hash.new(0)) {|genre, hash|
    names.each_with_object(Hash.new(0)) { |name, hash| hash[name] += 1 }
  end
  
  

end