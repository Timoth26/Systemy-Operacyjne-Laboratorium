from random import randint


def is_player_starting():
    return bool(randint(0, 1))


def ai_move(board):

    print('Ruch AI')

    x = randint(0, 4)
    y = randint(0, 4)

    while board[x][y] != ' ':
        x = randint(0, 4)
        y = randint(0, 4)

    print(f'AI rusza sie na wiersz: {x}, kolumna: {y}')

    board[x][y] == 'A'
    return board


def get_user_move(board):

    x = input('Podaj numer wiersza: ')
    y = input('podaj numer kolumny: ')

    x = int(x)
    y = int(y)

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
