class Game

  attr_reader :player1, :player2

  MOVE=[:Scissors, :Paper, :Rock]

  WINNER = {
    :Rock => :Paper,
    :Paper => :Scissors,
    :Scissors => :Rock
  }

  def initialize(player1,player2)
    @player1 = player1
    @player2 = player2
  end

  def choose_winner
    if WINNER[@player1.move.to_sym] == [@player2.move]
      :loser
    else
      :winner
    end
  end

end
