def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  return user_input.to_i - 1 
end

def position_taken?(board, input)
  if board[input] == " " || board[input] == "" || board[input] == nil 
    false 
  else 
    true
  end
end

def valid_move?(board, input)
 input.between?(0,8) && position_taken?(board, input) != true 
end 

def move(board, input, player = "X")
  board[input] = player
  return board
end
  
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  if valid_move?(board, input) == true
    move(board, input, player)
    display_board(board)
  else
    turn(board)
  end
end

