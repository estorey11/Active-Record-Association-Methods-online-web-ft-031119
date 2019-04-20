class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.size
  end

  def artist_count
    self.artists.size
    # return the number of artists associated with the genre
  end

  def all_artist_names
    self.artists.name
  end
end
