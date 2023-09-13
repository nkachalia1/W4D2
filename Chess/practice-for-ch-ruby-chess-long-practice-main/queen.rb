require_relative 'piece'
require_relative 'slideable'

class Queen < Piece
  include Slideable


  def symbol
    '♛'.colorize(color)
  end

  protected

  #   # return the directions in which a queen can move
  #   # a queen can move horizontally (across rows and columns) and diagonally
  def move_dirs
    DIAGONAL_DIRS + HORIZONTAL_DIRS
end


# Note: you can invoke methods from the piece from within the module methods, and vice versa. It is a two way street!
