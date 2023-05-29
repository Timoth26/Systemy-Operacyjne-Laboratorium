def print_board(board):
    
    for row in board:
        print(" | ".join(row))
        print("-" * 13)


def is_game_over(board):
    # wiersz
    for row in board:
        if row[0] == row[1] == row[2] == row[3] == row[4] != ' ':
            return True

    # kolumna
    for col in range(3):
        if board[0][col] == board[1][col] == board[2][col] == board[3][col] == board[4][col] != ' ':
            return True

    # przekatna
    if board[0][0] == board[1][1] == board[2][2]  == board[3][3]  == board[4][4] != ' ':
        return True
    if board[0][4] == board[1][3] == board[2][2]  == board[3][1]  == board[4][0] != ' ':
        return True

    return False


def new_board():
    cord_list = [[' ' for i in range(5)] for j in range(5)]
    return cord_list
