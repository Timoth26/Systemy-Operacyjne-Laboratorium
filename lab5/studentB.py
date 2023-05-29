from random import randint


def is_player_starting():
    return bool(randint(0, 1))


def ai_move(board):

    if ' ' not in board:
        return board

    x = randint(0, 4)
    y = randint(0, 4)

    while board[x][y] != ' ':
        x = randint(0, 4)
        y = randint(0, 4)

    board[x][y] == 'O'
    return board


def get_user_move(board):

    if ' ' not in board:
        return board

    x = input('Podaj numer wiersza: ')
    y = input('podaj numer kolumny: ')

    if board[x][y] != ' ':
        print("Nie mozna wykonac ruchu!")
        return board

    board[x][y] = "X"
    return board


def announce_outcome(board, players_move):
    players = {0: 'Uzyszkodnik', 1: 'AI'}
    print('Koniec gry!')
    print(board)
    print('Gre rozpoczynal gracz: ', players[players_move])
