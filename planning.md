#A new math question is generated for each turn by picking two numbers between 1 and 20.
#player whose turn it is is prompted the question and must answer correctly or lose a life
#Both players start with 3 lives. They lose a life if they mis-answer a question. 
#At the end of every turn, the game should output the new scores for both players, so players know where they stand.


# player
#   state
#     lives
#     turn
#     response
#   methods
#     guess

# game
#   state
#     players
#     current_player
#     ganme_over
#   methods
#     start_game

# question
#   state
#     question
#     answer
#   methods
#     ask
