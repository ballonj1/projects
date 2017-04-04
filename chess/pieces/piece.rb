class Piece
  def initialize(board, pos, color, symbol = nil)
    @board = board
    @pos = pos
    @color = color
    @symbol = symbol
  end

  def to_s
    @symbol.to_s
  end

  def empty?
    @symbol.nil?
  end

  def symbol
    @symbol
  end

  def valid_moves
  end

  private

  def move_into_check(to_pos)

  end
end
