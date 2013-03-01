
# Create a set of dice (this enables us to roll any number of the dice in the game)

class DiceSet
  attr_reader :values
  def roll(number_of_dice)
    @roll_values = (0...number_of_dice).collect { 1 + rand(6) }
  end
  
end

# Possibly create multiple sets of dice to monitor and control scoring and flow
# Free Dice
# Held Dice

