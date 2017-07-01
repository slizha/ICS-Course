puts 'What year were you born?'
y = gets.chomp.to_i
puts 'What month were you born? Enter the number.'
m = gets.chomp.to_i
puts 'What day were you born?'
d = gets.chomp.to_i
puts 'What hour were you born (military time)?'
h = gets.chomp.to_i
puts 'How many minutes after that hour were you born?'
min = gets.chomp.to_i
puts 'How many seconds after that minute were you born?'
s = gets.chomp.to_i
puts "A billion seconds after you are born is #{Time.gm(y, m, d, h, min, s) + 1000000000}"
