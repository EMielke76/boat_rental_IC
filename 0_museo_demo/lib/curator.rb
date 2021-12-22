class Curator
  attr_reader :photographs,
              :artists

  def initialize
    @photographs = []
    @artists =[]
  end

  def add_photograph(photo)
    @photographs.push(photo)
  end

  def add_artist(artist)
    @artists.push(artist)
  end

  def find_artist_by_id(id)
    @artists.select {|artist| artist.id == id}[0]
  end

  def photographs_by_artist
    artist_photo = {}
    @artists.map do |artist|
      artist_photo[artist] = @photographs.select {|photo| photo.artist_id == artist.id}
    end
    artist_photo
  end

  def artists_with_multiple_photographs
    photographer = photographs_by_artist.select do |key, value|
      value.length > 1
    end
    photographer.keys.map do |photog|
      photog.name
    end
  end
end
