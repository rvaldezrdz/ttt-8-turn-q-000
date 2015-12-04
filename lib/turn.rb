def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, position)
  if board[position] == " "
    return false
  elsif board[position] == ""
    return false
  elsif board[position] == nil
    return false
  else board[position] == "X" or board[position] == "O"
    return true
  end
end

def valid_move?(board,position)
  if position.to_i <= 9
    if position_taken?(board,position.to_i-1)
      return true
    end
  end
end