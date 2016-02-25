class Game

  def initialize(dimensions)
    @board = Board.new(dimensions)
    # initialize player 1, player2...
  end

  def check_winner
    return true if check_horizontal || check_vertical || check_diagonal
  end

  def check_horizontal

  end

  def check_vertical

  end

  def check_diagonal

  end



end
