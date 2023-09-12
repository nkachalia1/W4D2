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
        
    end
end
