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
end
