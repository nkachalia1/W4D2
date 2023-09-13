require_relative 'piece'
require_relative 'stepable'

class King < Piece
  include Stepable

  def symbol
    '♚'.colorize(color)
  end

  protected

  def move_diffs
    # return an array of diffs representing where a King can step to
    horizontal_dirs = [
      [0, -1], # left
      [0, 1], # right
      [-1, 0], # up (vertical)
      [1, 0]  # down (vertical)
    ].freeze

    # DIAGONAL_DIRS stores an array of diagonal directions
    diagonal_dirs = [
      [-1, -1], # up + left
      [-1, 1], # up + right
      [1, -1], # down + left
      [1, 1]  # down + right
    ].freeze

    horizontal_dirs + diagonal_dirs
  end
end
