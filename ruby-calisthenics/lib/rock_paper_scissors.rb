class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ; end
  class WrongNumberOfPlayersError < StandardError ; end


  def self.winner(player1, player2)
    # YOUR CODE HERE
    return (player1 + player2) =~ /rs|sp|pr|rr|ss|pp/i
  end
def rps_game_winner(game)
  	# YOUR CODE HERE
	raise WrongNumberOfPlayersError unless game.length == 2
	strategy = ["r","p","s"] # array of possible strategys or moves
	raise NoSuchStrategyError unless strategy.include?(game[0][1].downcase) && strategy.include?(game[1][1].downcase)#raise and error if move is not part of the strategy
	
	#takes played moves and check if it is a winning combo
	if rps_result(game[0][1], game[1][1])
		game[0]
	else
		game[1]
	end
end
def self.tournament_winner(tournament)
    # YOUR CODE HERE
  if tournament[0][1].class==String
		self.tournament_winner(tournament)
	else
		round1 = self.tournament_winner(tournament[0])
		round2 = self.tournament_winner(tournament[1])
		self.tournament_winner([round1,round2])
	
  end

end

end