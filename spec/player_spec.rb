require 'player'

describe Player do
  subject(:godzilla) { Player.new('Godzilla') }
  subject(:gidorah) { Player.new('Gidorah') }

  describe '#pretty_player' do
    it 'returns the name and the hit points' do 
      expect(godzilla.pretty_player).to eq "Godzilla HIT POINTS: 100"
    end
  end

  describe '#hp' do
  it 'returns player hit points' do
    expect(godzilla.hp).to eq described_class::LIFE
  end
end

  describe '#attack' do
  it 'damages the other player' do
    expect(godzilla).to receive(:damage_to_player)
    gidorah.attack(godzilla)
  end
end

  describe '#damage_to_player' do
  it 'takes 10 hit points off a player under attack' do
    expect { godzilla.damage_to_player }.to change { godzilla.hp }.by(-10)
  end
end
end