require 'dice'

describe Dice do
  it 'roll the dice' do
    expect(subject).to respond_to(:roll_dice)
  end

  it 'rolls between 1-6' do
    expect(subject.roll_dice).to be_between(1, 6)
  end

  it 'rolls a random number between 1 and 6' do
    result = []
    200.times { result << subject.roll_dice }
    expect(result).to include(1..6)
  end

  it 'number of dice' do
    expect(subject).to respond_to(:num_of_dice)
  end

  it 'can roll any number of dice' do
    result = subject.num_of_dice(2)
    a = result[0]
    b = result[1]
    expect(result).to eq [a,b]
  end
end
