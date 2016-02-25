class Board
  attr_accessor :board, :row, :col

  def initialize(row, col)
    @row = row
    @col = col
    @board = Array.new(row) { Array.new(col) }
end

  def show_board
    @col.times do |i|
      @row.times do |j|
        print @board[i][j] + " "
      end
      print "\n\n"
    end
  end

  def populate_empty_board
    @col.times do |i|
      @row.times do |j|
        @board[i][j] = "."
      end
    end
  end

  def place_x_on_empty_tile(row, col)
    if @board[row][col] == "."
      @board[row][col] = "X"
    else
      puts "Please select an empty tile"
    end
  end

  def place_o_on_empty_tile(row, col)
    if @board[row][col] == "."
      @board[row][col] = "O"
    else
      puts "Please select an empty tile"
    end
  end
end

board = Board.new(3,3)
board.populate_empty_board
board.place_o_on_empty_tile(0,0)
board.place_o_on_empty_tile(1,1)
board.place_o_on_empty_tile(2,2)
board.show_board
