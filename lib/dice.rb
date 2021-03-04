class Dice

  def initialize
    @prev_rolls = []
  end

attr_reader 'prev_rolls'

  def current_score
    @prev_rolls.sum
  end

  def num_of_dice(num)
    result = []
    num.times { result << roll_dice }
    result
  end

  def roll_dice
    result = rand(1..6)
    @prev_rolls << result
    result
  end
end
