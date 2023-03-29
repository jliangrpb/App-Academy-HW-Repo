class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @game_over = false 
    @sequence_length = 1
    @seq = [] 
  end

  def play
    self.take_turn until game_over
    self.game_over_message
    self.reset_game
  end

  def take_turn
    if !game_over
      self.show_sequence
      self.require_sequence
      self.round_success_message
      self.sequence_length += 1
    end
  end

  def show_sequence
    self.add_random_color
  end

  def require_sequence
    i = 0
    while i != sequence_length
      input = gets.chomp
      if input != seq[i]
        game_over = true
      end
      i += 1
    end
  end

  def add_random_color
    seq << COLORS.sample
  end

  def round_success_message
    puts 'round success!'
  end

  def game_over_message
    puts 'game over!'
  end

  def reset_game
    self.seq = []
    self.sequence_length = 1
    self.game_over = false
  end
end

# simon = Simon.new 
# simon.play