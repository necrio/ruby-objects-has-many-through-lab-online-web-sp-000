# require 'pry'
# 
# class Song
# 
#   attr_accessor :name, :artist, :genre
# 
#   ALL = []
# 
#   def initialize(name="", artist="", genre="")
#     @name = name
#     @artist = artist
#     @genre = genre
#     ALL << self
#   end
# 
#   def self.all
#     ALL
#   end
# 
#   def artist
#     @artist
#   end
# 
# end

class Song
  attr_accessor :name, :artist, :genre
 
  def initialize(name, genre)
    @name = name
    @genre = genre
    genre.add_song(self)
  end
end
