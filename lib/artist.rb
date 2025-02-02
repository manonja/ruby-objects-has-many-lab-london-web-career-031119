require 'pry'

class Artist

  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song_name)
    @songs << song_name
    song_name.artist = self
  end

  def add_song_by_name(song_name)
    add_song(Song.new(song_name))
  end

  def self.song_count
    Song.all.length
  end


end

# binding.pry
