require_relative 'slideable'
require_relative 'piece'

class Bishop < Piece
  include Slideable

  def initialize(board, pos, color)
    super(board, pos, color, '♗', :bishop)
  end

  def to_s
    @unicode
  end

  def moves_dirs
    diagonal_dirs
  end
end
