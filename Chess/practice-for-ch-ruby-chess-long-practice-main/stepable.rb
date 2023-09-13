module Stepable

    # create array to collect moves

    # iterate through each of the piece's possible move_diffs
      # for each move_diff, increment the piece's position to generate a new position
      # add the new position to the moves array if it is:
        # on the board and empty
        # OR on the board and contains a piece of the opposite color

    # return the final array of moves
    def moves

        current_pos = self.position
        row, col = current_pos

        moves_arr = []
        self.move_diffs.each do |direction|
            dx, dy = direction
            new_position = [row + dx, col + dy]
            moves_arr << [row + dx, col + dy] if in_bounds(new_position)
        end

        moves_arr
    end

    private

    def move_diffs
      # subclass implements this
      raise NotImplementedError
    end

    def in_bounds(pos)
        row, col = pos
        row >= 0 && row <= 7 && col >= 0 && col <= 7
    end

  end


  # Note: you can invoke methods from the piece from within the module methods, and vice versa. It is a two way street!
