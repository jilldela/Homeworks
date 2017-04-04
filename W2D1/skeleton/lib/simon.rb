require 'byebug'

class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length, @game_over, @seq = 1, false, []
  end

  def play
    until @game_over == true
      take_turn
    end
    game_over_message
    reset_game
  end

  def take_turn
    round_success_message if @game_over == false
    @sequence_length += 1
    show_sequence
    require_sequence
  end

  def show_sequence
    add_random_color
  end

  def require_sequence

  end

  def add_random_color
    @seq += COLORS.sample(1)
  end

  def round_success_message

  end

  def game_over_message

  end

  def reset_game
    @sequence_length, @game_over, @seq = 1, false, []

  end
end