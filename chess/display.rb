require 'colorize'
require 'byebug'

require_relative 'cursor'
require_relative 'board'


class Display
  def initialize(board)
    @cursor = Cursor.new([0,0], board)
    @board = board
  end

  def draw
    while true
      system('clear')
      render
      @cursor.get_input
    end
  end

  def move(new_pos)
  end

  def render
    @board.grid.each_with_index do |row, i|
      row.each_index do |j|
        case
        when [i, j] == @cursor.cursor_pos && @board[[i, j]].nil?
          print ' - '.colorize(:red)
        when [i, j] == @cursor.cursor_pos && @board[[i, j]].is_a?(Piece)
          print ' P '.colorize(:red)
        when @board[[i, j]].nil?
          print ' - '
        when @board[[i, j]].is_a?(Piece)
          print ' P '
        end
      end
      puts
    end
  end
end

if __FILE__ == $PROGRAM_NAME
  b = Board.new
  d = Display.new(b)
  d.draw
end
