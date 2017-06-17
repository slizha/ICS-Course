words = []
puts 'What is your first word?'
word = gets.chomp
words.push word
while word != ''
  puts 'What is your next word?'
  word = gets.chomp
  words.push word
end
puts 'Here are your sorted words: '
puts words.sort
