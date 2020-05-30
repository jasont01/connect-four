class ConnectFour
  def initialize
    @board = Array.new(6) {Array.new(7, "  ")}
    @turn = 1
    puts "===========CONNECT FOUR===========\n"
    play_game
  end

  def play_game
    until winner? do
      get_move
    end
  end

  def display_board
    print " 1   2   3   4   5   6   7\n"
    @board.each do |array|
      array.each { |val| print "[#{val}]"}
      print "\n"
    end
  end

  def get_move
    display_board
    puts "Player #{@turn}, It's your move:"
    print "> "
    move = gets.chomp.to_i
    valid_move?(move) ? update_board(move - 1) : invalid_move
  end

  def valid_move?(move)
    return false if (!move.is_a? Integer) || move < 1 || move > 7
    return true
  end

  def update_board(column)
    row = find_lowest(column)
    row == -1 ? invalid_move : @board[row][column] = game_piece
  end

  def find_lowest(move)
    return 5 if @board[5][move] == "  "
    @board.each_with_index do |array, row|
      return row - 1 if array[move] != "  "
    end
  end

  def invalid_move
    puts "Invalid Move!"
    puts "Columns are labeled 1 thru 7"
    puts "Enter Column Number"
  end

  def game_piece
    if @turn == 1
      @turn = 2
      piece = "\u26AA".encode('utf-8')
    else
      @turn = 1
      piece = "\u26AB".encode('utf-8')
    end
    piece
  end

  def winner?
    #check for winner
    return false
  end
end

game = ConnectFour.new