require_relative 'pieces/piece'
require_relative 'pieces/'

class Board
  attr_reader :grid

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

  def in_bounds?(pos)
    x, y = pos
    (0..7).cover?(x) && (0..7).cover?(y)
  end

  protected

  def find_king(color)

  end

  def make_starting_grid
    null_piece = NullPiece.instance

    top_row = [
      Rook.new(self, [0, 0], 'black'),
      Knight.new(self, [0, 1], 'black'),
      Bishop.new(self, [0, 2], 'black'),
      King.new(self, [0, 3], 'black'),
      Queen.new(self, [0, 4], 'black'),
      Bishop.new(self, [0, 5], 'black'),
      Knight.new(self, [0, 6], 'black'),
      Rook.new(self, [0, 7], 'black')
    ]

    @grid[0] = top_row

    bot_row = [
      Rook.new(self, [7, 0], 'white'),
      Knight.new(self, [7, 1], 'white'),
      Bishop.new(self, [7, 2], 'white'),
      King.new(self, [7, 3], 'white'),
      Queen.new(self, [7, 4], 'white'),
      Bishop.new(self, [7, 5], 'white'),
      Knight.new(self, [7, 6], 'white'),
      Rook.new(self, [7, 7], 'white')
    ]

    @grid[6] = bot_row

    @grid[1].each_index { |idx| @grid[1][idx] = Pawn.new(self, [1, idx], 'black') }
    @grid[6].each_index { |idx| @grid[6][idx] = Pawn.new(self, [6, idx], 'white') }


    (2..5).each do |row|
      row.each_index do |col|
        @grid[row][col] = null_piece
      end
    end
  end
end

if __FILE__ == $PROGRAM_NAME
  b = Board.new
  print b
end
