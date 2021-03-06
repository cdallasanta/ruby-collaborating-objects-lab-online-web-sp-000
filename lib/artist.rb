class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    self.save
  end

  def add_song(song)
    @songs << song
  end

  def save
    if !@@all.include?(self)
      @@all << self
    end
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    if @@all.find{|artist| artist.name == name}
      @@all.find{|artist| artist.name == name}
    else
      Artist.new(name)
    end
  end
end
