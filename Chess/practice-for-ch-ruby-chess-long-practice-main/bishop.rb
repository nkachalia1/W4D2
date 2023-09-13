require_relative 'piece'
require_relative 'slideable'

class Bishop < Piece
  include Slideable

  def symbol
    '♝'.colorize(color)
  end

  protected

  # return the directions in which a bishop can move
  # a bishop can move diagonally
  def move_dirs
    DIAGONAL_DIRS
end
end
