# Project: Tic Tac Toe

https://www.theodinproject.com/lessons/ruby-tic-tac-toe

## Introduction

Remember Tic Tac Toe (also known as “Noughts and Crosses”)? It involves a couple of players, a board, checking for victory in a game loop… all the conditions that make it a fun little problem to solve using our newfound OOP sea legs. Let’s build it!
Assignment

Build a tic-tac-toe game on the command line where two human players can play against each other and the board is displayed in between turns.

## Post-project review

It turned out messier than I was anticipating, but it mostly works. Funnily enough, I wrote down the two win conditions when I was brainstorming, but I didn't code them as separate checks the first time for some reason. I think it's good enough as an early Ruby project.

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
