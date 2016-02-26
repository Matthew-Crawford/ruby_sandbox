class Player
  attr_reader :game_piece

  def initialize(game_piece)
    @game_piece = game_piece
  end

  def take_turn(row, col)
    puts "Please designate your move by typing in: row col"
    gets input
    input.split(" ")
  end

end
