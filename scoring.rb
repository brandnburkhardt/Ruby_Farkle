
# Need some way to implement a heirarchy into the scoring, ie run through the 6 die computations
# first and if they are not relevant then move on to the scoring of triples and single dice.
#
# Will also need a way to send and recieve the dice rolled and held, as well as monitor the points
# gained in each round and the total score (banked? secure and unsecure?)

require_relative 'dice'
scoring_dice = [1,1,1,4,3,6]

def scoreDice(scoring_dice)
  
  result = 0
  scores1 = Hash.new 0
  scores2 = Hash.new 0
  scores3 = Hash.new 0
  
  if scoring_dice.size == 6
    scoring_dice.each do |n|
      scores1[n] += 1
    end  
    
    scores1.each do |key, value|
      sixpack = value % 6
      
    result += 10000 if sixpack == 0

      if result == 0
        scores1.keep_if { value == 2 }
    
        result += 750 if scores1.size == 3
      end
      
      if result == 0
        scoring_dice.each do |n|
          scores2[n] += 1
        end
        
        scores2.keep_if { |key2, value2| value2 == 1 }
        
        result += 1000 if scores2.size == 6
      end
    end    
  end
  
  if result == 0 || scoring_dice.size <= 5
    scoring_dice.each do |n|
      scores3[n] += 1
    end
    
    scores3.each do |key, value|
      trips, remainder = value/3, value % 3
      
      result += (100 * remainder) + (1000 * trips) if key == 1
      result += (50 * remainder) + (500 * trips) if key == 5
      result += (100 * key) if (key != 1 && key != 5 && value >= 3)
    end
  end
  
    
#puts "scoring dice = #{scoring_dice}"
#puts "scores1 = #{scores1}"
#puts "scores1.size = #{scores1.size}"
#puts "scoring dice after first pass = #{scoring_dice}"
#puts "scores2 = #{scores2}"
#puts "scores2.size = #{scores2.size}"
#puts "scoring dice after second pass = #{scoring_dice}"
#puts "scores3 = #{scores3}"

result
end

#puts "Player score = #{scoreDice(scoring_dice)}"
