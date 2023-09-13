require_relative "piece"
require 'byebug'
require_relative 'all_pieces'

class Board
    attr_reader :rows

    def initialize
        @rows = Array.new(8) {Array.new(8)}
        self.populate_board
    end

    def populate_board
        back_row = [Rook, Knight, Bishop, King, Queen, Bishop, Knight, Rook]
        (0..7).each do |col|
            self[[0, col]] = back_row[col].new(:white, self, [0, col])
            self[[1, col]] = Pawn.new(:white, self, [1, col])
            (2..5).each do |row|
                self[[row, col]] = NullPiece.instance
            end
            self[[6, col]] = Pawn.new(:black, self, [6, col])
            self[[7, col]] = back_row[col].new(:black, self, [7, col])

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
