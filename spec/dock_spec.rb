require './lib/boat'
require './lib/renter'
require './lib/dock'
RSpec.describe Dock do
  let(:dock) {Dock.new('The Rowing Dock', 3)}
  let(:kayak_1) {Boat.new(:kayak, 20)}
  let(:kayak_2) {Boat.new(:kayak, 20)}
  let(:sup_1) {Boat.new(:standup_paddle_board, 15)}
  let(:patrick) {Renter.new("Patrick Star", "4242424242424242")}
  let(:eugene) {Renter.new("Eugene Crabs", "1313131313131313")}

  it 'exists' do
    expect(dock).to be_a(Dock)
  end

  it 'can add rentals' do
    dock.rent(kayak_1, patrick)
    dock.rent(kayak_2, patrick)
    dock.rent(sup_1, eugene)
    expected = {
      kayak_1 => patrick,
      kayak_2 => patrick,
      sup_1 => eugene
    }

    expect(dock.rental_log).to eq(expected)
  end


end
