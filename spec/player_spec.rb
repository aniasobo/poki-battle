require 'player'

describe Player do
  subject(:godzilla) { Player.new('Godzilla') }

  describe '#pretty_player' do
    it 'returns the name and the hit points' do 
      expect(godzilla.pretty_player).to eq "Godzilla HIT POINTS: 100"
    end
  end
end