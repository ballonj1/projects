require_relative 'piece'
require_relative 'stepable'

class King < Piece
  include Stepable

  def initialize(board, pos)
    @unicode = 'U+2654'
    super(board, pos, :king)
  end

  def moves_diffs
    [[1, 0], [1, 1], [0, 1], [-1, 0], [-1, -1],
     [0, -1], [1, -1], [-1, 1]]
  end
end

if __FILE__ == $PROGRAM_NAME
  k = King.new(4, [4, 4])
  p k.moves_diffs
  puts
  p k.moves
  p k
end
