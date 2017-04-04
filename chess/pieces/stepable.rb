module Stepable
  def moves
    potential_moves = []
    moves_diffs.each do |diff|
      x = @pos[0] + diff[0]
      y = @pos[1] + diff[1]
      potential_moves << [x, y]
    end
    
    potential_moves
  end

  private

  def moves_diffs
  end
end
