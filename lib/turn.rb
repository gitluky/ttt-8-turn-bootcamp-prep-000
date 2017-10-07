def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(num)
  index = num.to_i - 1
end

def valid_move?(board, index)
  if index >= 0 and index < 9 && position_taken?(board,index) == false
    return true
  else
    return false
  end
end

def position_taken?(board,index)
  if board[index] != "" && board[index] != " "
    return true
  else
    return false
  end
end

def move(board, index, letter = "X")
  if valid_move?(board,index) == true
    board[index] = "#{letter}"
  end
end

def turn(board)
  puts "Please enter 1-9:"
  num = gets.strip
  index = input_to_index(num)
  if valid_move?(board,index) == true
    move(board, index)
    display_board(board)
    puts "Please enter 1-9:"
  else
    puts "Invalid Number, please enter 1-9:"
  end
end
