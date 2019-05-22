# require 'pry'
#
# class Artist
#
#   attr_accessor :name, :artist, :genre
#
#   ALL=[]
#
#   def initialize(name)
#     @name = name
#     ALL << self
#   end
#
#   def self.all
#     ALL
#   end
#
#   def new_song(name, genre)
#     song = Song.new(name, self, genre)
#     self.songs.last
#   end
#
#   def songs
#     Song.all.select do |song|
#       song.artist == self
#     end
#   end
#
#   def genres
#     Song.all.map do |song|
#       song.genre
#     end
#   end
#
# end


class Artist
	attr_accessor :name, :songs

	def initialize(name)
		@name = name
		@songs = []
	end

	def add_song(song)
		@songs << song
		song.artist = self
	end

	def songs #used as self.songs in method below
		@songs
	end

	def genres #returns an array of genre objects
		self.songs.collect do |song|
			song.genre
		end
	end
end
