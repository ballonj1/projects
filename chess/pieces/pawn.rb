class Pawn < Piece
  def initialize(board, pos, color)
    super(board, pos, color, '♙', :pawn)
  end

  def moves

  end

  protected

  def at_start_row?
    (@color == black && @pos[0] == 1) || (@color == white && @pos[0] == 6)
  end

  def forward_dir
    @color == black ? 'down' : 'up'
  end

  def forward_steps
    if forward_dir == 'down' && at_start_row?
      [[-2, 0], [-1, 0]]
    elsif forward_dir 'down'
      [[-1, 0]]
    elsif forward_dir == 'up' && at_start_row?
      [[2, 0], [1, 0]]
    elsif forward_dir 'up'
      [[1, 0]]
    end
  end

  def side_attacks
    x, y = @pos
    if forward_dir == 'down'
      [[x - 1, y + 1],
      [x - 1, y - 1]]
    elsif forward_dir == 'up'
      [[x + 1, y + 1],
      [x + 1, y - 1]]
    end
  end
end
