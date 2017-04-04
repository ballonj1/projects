class Piece
  attr_reader :color

  def initialize(board, pos, color, unicode = nil, symbol = nil)
    @board = board
    @pos = pos
    @color = color
    @unicode = unicode
    @symbol = symbol
  end

  def to_s
    @unicode
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
