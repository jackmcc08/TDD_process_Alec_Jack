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

  it 'prev_roll' do
    expect(subject).to respond_to(:prev_rolls)
  end

  it 'can keep track of my previous rolls' do
    result = subject.num_of_dice(4)
    a = result[0]
    b = result[1]
    c = result[2]
    d = result[3]
    expect(subject.prev_rolls).to eq [a,b,c,d]
  end

  it 'current score' do
    expect(subject).to respond_to(:current_score)
  end

  it 'gives me my current score when requested' do
    test_subject = subject
    test_subject.num_of_dice(6)
    expect(test_subject.current_score).to eq test_subject.prev_rolls.sum
  end
end
