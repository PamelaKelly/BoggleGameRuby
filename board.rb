# A class to represent the 'board' of letters for Boggle the game

# State for the board will be done or busy
# If midgame cannot shuffle board

class Board
  attr_accessor :letters, :state, :board
  def initialize(lts, ste)
    @letters = lts
    @state = ste
    @board = Matrix.zero(3)
  end

  def shuffle
    state_of_game = @state
    used_letters = []
    if state_of_game != "done"
      break
    else
      x = 0
      y = 0
      for i in 0..8
        ltr = @letters.sample
        @board[x][y] = ltr
        if x == 2
          y += 1
        end
        x += 1
      end
    end
  end

  def show_board
    p @board
  end
end