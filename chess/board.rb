require_relative 'piece'

class Board
  def initialize
    @grid = Array.new(8) { Array.new(8) }
    make_starting_grid
  end

  def to_s

  end

  def [](pos)
    x, y = pos
    @grid[x][y]
  end

  def []=(pos, piece)
    x, y = pos
    @grid[x][y] = piece
  end

  def dup

  end

  def move_piece(color, from_pos, to_pos)
    if self[from_pos] == nil || self[to_pos] != nil
      raise StandardError.new "Invalid move"
    end
  end

  def move_piece!(from_pos, to_pos)

  end

  def checkmate

  end

  protected

  def find_king(color)

  end

  def make_starting_grid
    piece_rows = [0, 1, 6, 7]
    @grid.each_with_index do |row, i|
      row.each_with_index do |col, j|
        @grid[i][j] = piece_rows.include?(i) ? Piece.new : nil
      end
    end
  end
end
