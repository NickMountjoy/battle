class Game

  attr_reader :player_1, :player_2, :current_player

  def initialize(player1, player2)
    @player_1 = player1
    @player_2 = player2
    @current_player = player_1
  end

  def attack
   current_opponent.be_attacked
  end

  def change_player
      @current_player == @player_1 ? @current_player = @player_2 : @current_player = @player_1
  end

  def current_opponent
    @current_player == @player_1 ? @player_2 : @player_1
  end

  def game_over?
    @current_player.hitpoints <= 0 || current_opponent.hitpoints <= 0
  end
end
