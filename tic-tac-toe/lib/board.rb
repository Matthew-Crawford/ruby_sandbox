class Board
  attr_accessor :board, :row, :col

  def initialize(dimensions)
    @row = dimensions
    @col = dimensions
    @board = Array.new(dimensions) {Array.new(dimensions) {"."}}
  end

  def show_board
    @col.times do |i|
      @row.times do |j|
        print @board[i][j] + " "
      end
      print "\n\n"
    end
  end
end
