require_relative "piece"

class Board
    attr_reader :rows

    def initialize
        @rows = Array.new(8) {Array.new(8)}
    end

    def populate_board
        back_row = ["Rook", "Knight", "Bishop", "King", "Queen", "Bishop", "Knight", "Rook"]
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

    # def move_piece(start_pos, end_pos) # remove
    #     if self[start_pos] != nil && in_bounds(end_pos) && self[end_pos] == nil
    #         self[end_pos] = self[start_pos]
    #         self[start_pos] = nil
    #     elsif self[start_pos] == nil
    #         raise "No piece here"
    #     elsif self[end_pos] != nil
    #         raise "Piece is already here"
    #     end
    # end
end
