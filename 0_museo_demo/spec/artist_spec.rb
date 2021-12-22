require './lib/photograph'
require './lib/artist'
RSpec.describe Artist do
  let(:attributes) {{
  id: "2",
  name: "Ansel Adams",
  born: "1902",
  died: "1984",
  country: "United States"
  }}
  let(:artist) {Artist.new(attributes)}
  it 'exists' do
    expect(artist).to be_a(Artist)
  end
  it 'has attributes' do
    expect(artist.id).to eq("2")
    expect(artist.name).to eq("Ansel Adams")
    expect(artist.born).to eq("1902")
    expect(artist.country).to eq("United States")
  end
  it '#age_at_death' do
    expect(artist.age_at_death).to eq(82)
  end
end
