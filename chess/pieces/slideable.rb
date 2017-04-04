module Slideable
  def moves
    moves_dirs
  end

  private

  def moves_dirs

  end

  def horizontal_dirs
    up = grow_unblocked_moves_in_dir(1, 1)
    down = grow_unblocked_moves_in_dir(1, -1)
    left = grow_unblocked_moves_in_dir(-1, -1)
    right = grow_unblocked_moves_in_dir(-1, 1)

    up + down + left + right
  end

  def diagonal_dirs
    top_right = grow_unblocked_moves_in_dir(1, 1)
    bottom_right = grow_unblocked_moves_in_dir(1, -1)
    bottom_left = grow_unblocked_moves_in_dir(-1, -1)
    top_left = grow_unblocked_moves_in_dir(-1, 1)

    top_right + bottom_right + bottom_left + top_left
  end

  def grow_unblocked_moves_in_dir(dx, dy)
    # pos[x + dx, y + dx]
    avail_moves = []
    x, y = @pos
    x += dx
    y += dy

    while @board.in_bounds?([x,y])
      # break if @board[[x, y]].color == self.color
      avail_moves << [x, y]
      # break if @board[[x, y]].color != self.color && !@board[[x, y]].empty?
      x += dx
      y += dy
    end

    avail_moves
  end

end
