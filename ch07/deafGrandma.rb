puts 'SAY HELLO TO GRANDMA'
resp = gets.chomp
while resp != 'BYE'
  if resp == resp.upcase
    puts 'NO, NOT SINCE ' + (rand(21) + 1930).to_s + '!'
  else
    puts 'HUH?! SPEAK UP, SONNY!'
  end
  resp = gets.chomp
end
puts 'BYE!'
