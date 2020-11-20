class Track < ActiveRecord::Base
  belongs_to :genre
  belongs_to :media_type
  belongs_to :album

  def seconds
    milliseconds.fdiv(1000).round
  end

  def artist
    album.artist
  end
end
