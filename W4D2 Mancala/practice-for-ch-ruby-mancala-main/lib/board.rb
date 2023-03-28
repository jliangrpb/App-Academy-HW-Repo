class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = Array.new(14) {Array.new}
    @p1_cups = @cups[0..5]
    @p1_score = @cups[6]
    @p2_cups = @cups[7..12]
    @p2_score = @cups[13]
    @p1_cups.each do |cup|
      4.times { cup << :stone}
    end
    @p2_cups.each do |cup|
      4.times { cup << :stone}
    end
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
  end

  def valid_move?(start_pos)
    if start_pos > 14
      raise 'Invalid starting cup'
    elsif cups[start_pos].empty?
      raise 'Starting cup is empty'
    end
  end

  def make_move(start_pos, current_player_name)
    stones = cups[start_pos].length
    cups[start_pos] = []

  end

  def next_turn(ending_cup_idx)
    # helper method to determine what #make_move returns
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    if cups[0..5].all?{|cup| cup.empty?} || cups[7..12].all?{|cup| cup.empty?}
      return true 
    end
    false
  end

  def winner
    return :draw if cups[6].length == cups[13].length 
      if cups[6].length > cups[13].length
        return @name1
      else
        return @name2
      end
  end
end