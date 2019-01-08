require 'pry'

class Song
  attr_accessor :name, :artist, :genre

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    binding.pry
    split_file = filename.split(" - ")
    artist = split_file[0]
    title = split_file[1]
    genre = split_file[2].delete(".mp3")
    song = Song.new(title)
    song.artist = artist
    song.genre = genre
  end
end
