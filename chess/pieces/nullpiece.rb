require 'singleton'

class NullPiece < Piece
  include Singleton

  def initialize
    super(nil, nil, nil)
  end

  def moves
  end
end
