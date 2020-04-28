require 'pry'
class Artist
  attr_accessor :name, :songs

  @@song_count = 0

  def initialize(name)
    @name = name
  end

  def songs
    Song.all.select do |song|
      song.artist == self
  end
end

  def add_song(song)
    song.artist = self #artist instance
  end

  def add_song_by_name(name)
    song = Song.new(name)
    add_song(song)
  end

  def self.song_count
    Song.all.count
  end

end