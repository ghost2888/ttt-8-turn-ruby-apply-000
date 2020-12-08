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
 position_taken?(board, input) != true && input.between?(0,8)
end 

def move(board, input, player = "X")
  board[input] = player
  return board
end
  
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index) 
    move(board, input, player)
  else
    turn(board)
  end
  display_board(board)
end

