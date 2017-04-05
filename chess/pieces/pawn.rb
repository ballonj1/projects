require_relative 'piece'
require_relative '../board'
class Pawn < Piece
  def initialize(board, pos, color)
    super(board, pos, color, '♙', :pawn)
  end

  def moves
    forward_steps + side_attacks
  end

  protected

  def at_start_row?
    (@color == "black" && @pos[0] == 1) || (@color == "white" && @pos[0] == 6)
  end

  def forward_dir
    @color == "black" ? 'down' : 'up'
  end

  def forward_steps
    x, y = @pos
    if forward_dir == 'down' && at_start_row?
      [[x - 2, 0], [x - 1, 0]]
    elsif forward_dir 'down'
      [[x - 1, 0]]
    elsif forward_dir == 'up' && at_start_row?
      [[x + 2, 0], [x + 1, 0]]
    elsif forward_dir 'up'
      [[x + 1, 0]]
    end
  end

  def side_attacks
    x, y = @pos
    attacks = []
    if forward_dir == 'down'
      attacks << [x - 1, y + 1] if @board[[x - 1, y + 1]].color == 'white'
      attacks << [x - 1, y - 1] if @board[[x - 1, y - 1]].color == 'white'
    elsif forward_dir == 'up'
      attacks << [x + 1, y + 1] if @board[[x + 1, y + 1]].color == 'black'
      attacks << [x + 1, y - 1] if @board[[x + 1, y - 1]].color == 'black'
    end

    attacks
  end
end

if __FILE__ == $PROGRAM_NAME
  b = Board.new
  pawn = Pawn.new(b, [1, 0], "black")
  p pawn.moves
end
