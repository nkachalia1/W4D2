require_relative 'piece'
require_relative 'stepable'

class Pawn < Piece
  include Stepable

  def symbol
    '♟︎'.colorize(color)
  end

  def moves
    total_moves = []
    total_moves += self.forward_steps + self.side_attacks
  end

  protected

  def move_diffs
    # return an array of diffs representing where a Knight can step to
    arr = [ [2, -1], [2, 1], [-2, 1], [-2, -1],
            [1, -2], [-1, -2], [1, 2], [-1, 2] ].freeze
    arr
  end

  private

  def at_start_row?
    current_pos = self.position
    row, col = current_pos
    row == 1 || row == 6
  end

  def forward_dir
    if self.color == :white
      return 1
    else
      return -1
    end
  end

  def forward_steps
    forward_steps_arr = []
    current_pos = self.position
    row, col = current_pos
    forward_1 = [row + forward_dir, col]
    forward_steps_arr << forward_1

    if at_start_row?
      forward_2 = [row + 2*forward_dir, col]
      forward_steps_arr << forward_2
    end
  end

  def side_attacks
    current_pos = self.position
    row, col = current_pos
    side_attack_arr = []
    diag_1 = [row + forward_dir, col-1]
    diag_2 = [row + forward_dir, col+1]
    if self.board[diag_1].color != self.color && self.board[diag_1].color != :blank
      side_attack_arr += diag_1
    end

    if self.board[diag_2].color != self.color && self.board[diag_1].color != :blank
      side_attack_arr += diag_2
    end

    side_attack_arr
  end
end
