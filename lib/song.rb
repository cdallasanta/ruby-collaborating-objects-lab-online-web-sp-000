class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    split_file = filename.split(" - ")
    artist = split_file[0]
    title = split_file[1].delete(".mp3")
    song = Song.new(title)
    song.artist = artist
  end
end
