class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def new_by_filename(filename)
    filename.each do |file|
      split_file = file.split(" - ")
      artist = split_file[0]
      title = split_file[1]
  end
end
