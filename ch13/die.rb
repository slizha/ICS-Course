class Die
  def initialize
    roll
  end

  def roll
    @number_showing = 1 + rand(6)
  end

  def showing
    @number_showing
  end

  def cheat(num)
    if num < 1 || num > 6
      puts 'Please enter a value between 1 and 6'
    else
      @number_showing = num
    end
  end
end
die = Die.new
die.cheat(4)
puts die.showing
