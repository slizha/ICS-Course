puts 'What year were you born?'
y = gets.chomp.to_i
puts 'What month were you born? Enter the number.'
m = gets.chomp.to_i
puts 'What day were you born?'
d = gets.chomp.to_i
age = (Time.new - Time.gm(y, m, d))/(365*24*60*60)
while age >= 1
  puts 'SPANK'
  age -= 1
end
