require 'game'

describe Game do
  let(:player1) { double:player1, name: "andrew"}
  let(:player2) { double:player2, name: "nick"}
  subject(:game) { described_class.new(player1, player2) }


  describe '#initialize' do
    it 'initialize player1 as current player' do
      expect(game.current_player.name).to eq 'andrew'
    end
  end

  describe "#attack" do
    it 'damages the player' do
      expect(player2).to receive(:be_attacked)
      game.attack
    end
  end

  describe '#change_player' do
    it 'Switches the player' do
      game.change_player
      expect(game.current_player.name).to include "nick"
    end
  end

  describe '#game_over' do
    it 'Ends game' do
      game
    end
  end

end
