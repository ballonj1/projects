require_relative 'slideable'

class Queen < Piece
  include Slideable

  def initialize(board, pos, color)
    super(board, pos, color, '♕', :queen)
  end

  def moves_dirs
    horizontal_dirs + diagonal_dirs
  end
end

if __FILE__ == $PROGRAM_NAME
  b = Board.new
  q = Queen.new(b, [4, 4], 4)
  p q.moves_dirs
  puts
  p q.moves
  print q
end
