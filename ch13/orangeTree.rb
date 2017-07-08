class OrangeTree
  def initialize
    @age = 0
    @height = 0
    @oranges = 0
  end

  attr_reader :height

  attr_reader :age

  def orangeCount
    @oranges
  end

  def oneYearPasses
    @age += 1
    @oranges = 300 + rand(10) if @age > 2 && @age <= 50
    @height += 1 if @age < 16
    if @age > rand(250)
      puts 'Your orange tree died :('
      exit
    end
  end

  def pickOrange
    if @oranges < 1
      puts 'There are no oranges'
    else
      @oranges -= 1
      puts 'Wow that\'s a delicious orange!'
    end
  end
end
tree = OrangeTree.new
loop do
  tree.oneYearPasses
  puts tree.age.to_s + ' years'
  puts tree.height.to_s + ' feet'
  puts tree.orangeCount.to_s + ' oranges'
  tree.pickOrange
  puts tree.orangeCount.to_s + ' oranges'
end
