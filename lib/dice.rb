class Dice
  def num_of_dice(num)
    result = []
    num.times { result << roll_dice }
    result
  end

  def roll_dice
    rand(1..6)
  end
end
