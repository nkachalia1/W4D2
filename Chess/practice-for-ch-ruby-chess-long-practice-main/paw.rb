require_relative 'piece'
require_relative 'stepable'

class Pawn < Piece
  include Stepable

  def symbol
    '♞'.colorize(color)
  end

  protected

  def move_diffs
    # return an array of diffs representing where a Knight can step to
    arr = [ [2, -1], [2, 1], [-2, 1], [-2, -1],
            [1, -2], [-1, -2], [1, 2], [-1, 2] ].freeze
    arr
  end
end
