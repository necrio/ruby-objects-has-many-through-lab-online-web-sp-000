# class Artist
#
#
#
#   attr_accessor :name, :artist, :genre
#
#   @@all = []
#
#
#
#
#   def initialize(name, artist=nil)
#     @name = name
#     @artist = artist
# @@all << self
#   end
#
# def self.all
#   @@all
# end
#
#
#   def new_song(name, genre)
#     song = Song.new(name, self, genre)
#   # song.artist = self
#   end
#
#     def songs
#       Song.all.select do |song|
#         song.artist == self
#     end
#   end
#
#   def genres
#     song.all.map do |song|
#       song.genre
#     end
#   end
#
#
#
#
#
#
#
# end

def initialize
  super
  @songs = []
end

def self.all
  @@artists
end

def add_song(song)
  @songs << song
  song.artist = self
end

def add_songs(songs)
  songs.each { |song| add_song(song) }
end
