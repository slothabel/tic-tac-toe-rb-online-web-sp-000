WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5],  # Middle row
  [6,7,8],  # bottom row
  [0,4,8],  # diagonal
  [0,3,6],  # left row
  [1,4,7],  # middle row
  [2,5,8],  # right row
  [2,4,6]  # diagonal
  ]

#board = [" "," "," "," "," "," "," "," "," "]
  def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(board)
  board.to_i - 1
end

def move(board, index, token)
  board[index] = token
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == ""
   false
 elsif board[index] == "X" || board[index] == "O"
   true
else
  false
   end
end

def valid_move?(board, index)
  if index.between?(0,8) && position_taken?(board, index) == false
    true
  else
    false
  end
end

def turn_count(board)
  board.count { |token| token == 'X' || token == 'O' }
end
