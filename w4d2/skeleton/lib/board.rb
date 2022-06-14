class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = Array.new(14) {Array.new} 
    place_stones
    
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    @cups.each.with_index do |arr, i|
      if i != 6 && i != 13
        4.times do 
          arr << :stone
        end
      end
    end
  end

  def valid_move?(start_pos)
      if start_pos < 0 || start_pos > 12
        raise "Invalid starting cup"
      end
      if @cups[start_pos].empty?
        raise "Starting cup is empty"
      end
  end

  def make_move(start_pos, current_player_name)
    stones = @cups[start_pos]
    @cups[start_pos] = []
  i = start_pos
    until stones.empty?
      i += 1
      i = 0 if i > 13

      if i == 6
        @cups[i] << stones.pop if current_player_name == @name1
      elsif i == 13
        @cups[i] << stones.pop if current_player_name == @name2
      else
        @cups[i] << stones.pop
      end
    end

    self.render
    next_turn(i)
  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
    if ending_cup_idx == 6 || ending_cup_idx == 13
      return :prompt
    elsif @cups[ending_cup_idx].count == 1
      return :switch
    else
      return ending_cup_idx
    end
    
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    return true if (0..5).to_a.all? {|i| @cups[i].empty?}
    return true if (7..12).to_a.all? {|i| @cups[i].empty?}
    false
  end

  def winner
    return :draw if @cups[6].count == @cups[13].count
    if @cups[6].count > @cups[13].count
      return @name1
    else
      return @name2
    end
  end
end
