

require_relative 'dice' 

dice = DiceSet.new
rolled_dice = dice.roll(6)
puts "Dice:   1      2      3      4      5      6"
puts "      -----  -----  -----  -----  -----  -----"
puts "      | #{rolled_dice[0]} |  | #{rolled_dice[1]} |  | #{rolled_dice[2]} |  | #{rolled_dice[3]} |  | #{rolled_dice[4]} |  | #{rolled_dice[5]} |"
puts "      -----  -----  -----  -----  -----  -----"
puts ""
puts "Which dice would you like to keep?"

dice_selects = gets.chomp


# in game.rb (gametest.rb) after the intro section, use while game = true, print loop?

