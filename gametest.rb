
#require outside programs to handle info not in main loop

require_relative 'dice'
require_relative 'player' 
require_relative 'scoring'

# Getting started with initalizing players and the current player/roller

puts"Welcome to Ruby Farkle, what's your name?"
name1 = gets.chomp.capitalize
puts

puts"Okay thanks #{name1}, you will be Player 1."
puts
puts"Player 2, what is your name?"
name2 = gets.chomp.capitalize
puts
puts"Alright #{name1} and #{name2}, let's play some farkle."

player1 = Player.new("#{name1}")
player2 = Player.new("#{name2}")
activePlayer = player1

# Add next step of game: basic rules and starting the loop


# Testing player switching and adding points (Comment out when done)

puts "Current player is #{player1.name}"
activePlayer = player2
puts 
puts "Switch players"
puts "Current player is #{player2.name}"
puts "Current player's score is #{player2.score}"
puts
puts "Add some points"
scoring_dice = [1,1,1,3,4,6]
activePlayer.score = scoreDice(scoring_dice)
puts "Current player's score is #{player2.score}"
activePlayer.score = -25
puts "Current player's score is #{player2.score}"
activePlayer = player1
