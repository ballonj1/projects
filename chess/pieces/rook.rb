require_relative 'slideable'

class Rook < Piece
  include Slideable

  def initialize(board, pos, color)
    super(board, pos, color, '♖', :rook)
  end

  def moves_dirs
    horizontal_dirs
  end
end
