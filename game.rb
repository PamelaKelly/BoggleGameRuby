# Class to implement the game logic for Boggle

class Boggle
  attr_accessor :timer, :score
  def initialize(tmr)
    @timer = tmr
    @score = 0
  end

  def time_game
    game_time = @timer
    # wait for message from other file to say the game is in
    # progress?
  end

  def keep_score
    # for every word input from user score the input
  end
end