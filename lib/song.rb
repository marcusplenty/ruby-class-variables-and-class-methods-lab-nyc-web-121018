class Song
  @@count = 0
  @@genres = []
  @@artists = []
  attr_accessor :name, :artist, :genre
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count +=1
    @@genres << genre
    @@artists << artist
  end 
  def self.count
    @@count
  end
  
  def self.genres
    @@genres.uniq!
  end 
  
  def self.artists
    @@artists.uniq!
  end
  
  def self.genre_count
    gen_hash = {}
    @@genres.each do |genre|
      if gen_hash.include?(genre)
        gen_hash[genre] += 1
      else
        gen_hash[genre] = 1
      end 
    end
    return gen_hash
  end
  
   def self.artist_count
    art_hash = {}
    @@artists.each do |artist|
      if gen_hash.include?(genre)
        gen_hash[genre] += 1
      else
        gen_hash[genre] = 1
      end 
    end
    return gen_hash
  end 
end 