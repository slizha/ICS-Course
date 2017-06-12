puts 'What is your starting year?'
start = gets.chomp.to_i
puts 'What is your ending year?'
ends = gets.chomp.to_i
puts 'Leap Years: '
while start <= ends
  if start % 4 == 0 && (start % 100 != 0 || start % 400 == 0)
    puts start.to_s + " "
  end
  start += 1
end
