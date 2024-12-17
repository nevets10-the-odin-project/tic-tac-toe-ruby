# tic-tac-toe-ruby
Project: Tic Tac Toe

---

## Brainstorming

What are the end conditions?
1. A player wins
2. There are no more spaces available

The main portion of the game should exist in a loop until one of those two conditions are met. Then maybe a prompt to start again.

What are the elements in the game?
1. Players
2. The board

I think both can be classes.

A player class would consist of:
- A player number - variable
- Their symbol ("X" or "O") - variable
- Extras?
    - Win count
    - Name

The board class would consist of:
- The available spaces on the board - variable
- A variable that holds win conditions
    - There are only 8 win conditions, I'll just hardcode them
- A method to modify the board
- A method to check for the end condition
- A method to restart