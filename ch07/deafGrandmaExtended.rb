puts 'SAY HELLO TO GRANDMA'
resp = gets.chomp
num = 0
while num < 2
  if resp == 'BYE'
    num += 1
  elsif resp == resp.upcase
    num = 0
    puts 'NO, NOT SINCE ' + (rand(21) + 1930).to_s + '!'
  else
    num = 0
    puts 'HUH?! SPEAK UP, SONNY!'
  end
  resp = gets.chomp
end
puts 'BYE SONNY'
