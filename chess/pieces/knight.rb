require_relative 'piece'
require_relative 'stepable'

class Knight < Piece
  include Stepable

  def initialize(board, pos, color)
    super(board, pos, color, '♘', :knight)
  end

  def moves_diffs
    [[2, 1], [1, 2], [-1, 2], [2, -1],
      [1, -2], [-2, 1], [-1, -2], [-2, -1]]
  end
end

if __FILE__ == $PROGRAM_NAME
  k = Knight.new(4, [4, 4], 4)
  p k.moves_diffs
  puts
  p k.moves
  print k
end
