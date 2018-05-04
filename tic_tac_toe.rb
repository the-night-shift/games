# make the board
board = [
  ["-", "-", "-"],
  ["-", "-", "-"],
  ["-", "-", "-"]
]
# show the user the board
p board[0]
p board[1]
p board[2]
# have a user input a guess

# which array should the user_input go to
player_character = "X"

while true
  if player_character == "X"
    player_character = "O"
  else
    player_character = "X"
  end

  p "guess 1-9 for player #{player_character}"
  user_input = gets.chomp.to_i - 1

  outside_array_index = user_input / 3
  inner_array_index = user_input % 3

  # have that guess show up on the board
  board[outside_array_index][inner_array_index] = player_character


  p board[0]
  p board[1]
  p board[2]
  # check if someone has won
  horizontal_win = ((board[0].uniq.length == 1) && !board[0].include?("-")) || ((board[1].uniq.length == 1) && !board[1].include?("-")) || ((board[1].uniq.length == 1) && !board[1].include?("-"))

  vertical_win_1 = ([board[0][0], board[1][0], board[2][0]] == ["X", "X", "X"]) || ([board[0][0], board[1][0], board[2][0]] == ["O", "O", "O"])

  vertical_win_2 = ([board[0][2], board[1][2], board[2][2]] == ["X", "X", "X"]) || [board[0][2], board[1][2], board[2][2]] == ["O", "O", "O"]

  vertical_win_3 = ([board[0][1], board[1][1], board[2][1]] == ["X", "X", "X"]) || [board[0][1], board[1][1], board[2][1]] == ["O", "O", "O"]

  diagonal_win_top_left = ([board[0][0], board[1][1], board[2][2]]  == ["X", "X", "X"] || [board[0][0], board[1][1], board[2][2]]  == ["O", "O", "O"])

  diagonal_win_top_right = ([board[0][2], board[1][1], board[2][0]]  == ["X", "X", "X"] || [board[0][2], board[1][1], board[2][0]]  == ["O", "O", "O"])

    # what happens when someone wins?
    # stop the file, tell them they won

  if horizontal_win || vertical_win_1 || vertical_win_2 || vertical_win_3 || diagonal_win_top_right || diagonal_win_top_left
    p "you won!"
    break

  end
end

# alternate between players

# repeat

