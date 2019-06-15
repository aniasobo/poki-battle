require 'game'

describe Game do
  subject(:game) { described_class.new(player1, player2) }
  let(:player1) { double :player }
  let(:player2) { double :player }

  describe '#player1 and player2' do
  it 'returns player 1 name' do
    expect(game.player1).to eq player1
  end

  it 'returns player 2 name' do
    expect(game.player2).to eq player2
  end
end

  describe '#attack' do
    it 'damages the player' do
      expect(player2).to receive(:damage_to_player)
      game.attack(player2)
    end
end
end