require_relative 'board'
require_relative 'player'

class Game

  def initialize(dimensions)
    @board = Board.new(dimensions)
    @player1 = Player.new("X")
    @player2 = Player.new("O")
  end

  def check_tie
    return true if no_available_tiles?
  end

  def no_available_tiles?
    @board.row.times do |row|
      @board.col.times do |col|
        return false if @board.board[row][col] == "."
      end
    end
    return true
  end

  def check_winner(player)
    return true if check_horizontal(player.game_piece) || check_vertical(player.game_piece) || check_diagonal(player.game_piece)
  end

  def check_horizontal(piece)

  end

  def check_vertical(piece)

  end

  def check_diagonal(piece)

  end

  def place_piece_on_empty_tile(player, row, col)
    if @board[row][col] == "."
      @board[row][col] = player.game_piece
    else
      puts "Please select an empty tile"
    end
  end

  def take_turn(player)
    puts "Please designate your move by typing in: row col"
    input = gets
    row, col = input.split(" ")
    row = row.to_i
    col = col.to_i
    @board.board[row][col] = player.game_piece
  end

  def run

    player1_winner = false
    player2_winner = false
    tie = false

    @board.show_board
    while(true)

      if check_winner(@player1)
        player1_winner = true
      elsif check_tie
        tie = true
        break
      else
        take_turn(@player1)
        @board.show_board
      end

      if check_winner(@player2)
        player2_winner = true
      elsif check_tie
        tie = true
        break
      else
        take_turn(@player2)
        @board.show_board
      end
    end

    if player1_winner
      puts "Player 1 is the winner!"
    elsif player2_winner
      puts "Player 2 is the winner!"
    else
      puts "It's a tie!"
    end
  end
end

game = Game.new(3)
game.run
