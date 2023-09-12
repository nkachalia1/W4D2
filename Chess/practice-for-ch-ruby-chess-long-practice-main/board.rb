require_relative "piece"

class Board
    attr_reader :rows

    def initialize
        @rows = Array.new(8) {Array.new(8)}
    end

    def populate_board
        back_row = ["Rook", "Knight", "Bishop", "Queen", "King", "Bishop", "Knight", "Rook"]
        (0..7).each do |i| 
            self[[0, i]] = Piece.new(back_row[i])
            self[[1, i]] = Piece.new("Pawn")
            self[[6, i]] = Piece.new("Pawn")
            self[[7, i]] = Piece.new(back_row[i])
        end
    end

    def [](pos)
        row, col = pos
        @rows[row][col]
    end

    def []=(pos, val)
        row, col = pos
        @rows[row][col] = val
    end

    def move_piece(start_pos, end_pos)
        # The `Board` class should have a `#move_piece(start_pos, end_pos)` method. This
        # should update the 2D grid and also the moved piece's position. You'll want to
        # raise an exception if:

        # 1. there is no piece at `start_pos` or
        # 2. the piece cannot move to `end_pos`.
    end
end
