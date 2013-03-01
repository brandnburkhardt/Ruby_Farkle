
class Player
  attr_reader :name
  attr_accessor :score
  def initialize name 
    @name = name
    @score = 0
  end
  def score=(value)
    @score = @score + value
  end
end