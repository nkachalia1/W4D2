class Board
    attr_reader :rows

    def initialize
        @rows = Array.new {Array.new}
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
