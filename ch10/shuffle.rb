def shuffle some_array
  recursive_shuffle some_array, []
end
def recursive_shuffle some_array, shuffled_array
  while some_array.size != 0
    num = rand(some_array.size)
    shuffled_array.push some_array[num]
    some_array.delete some_array[num]
    recursive_shuffle some_array, shuffled_array
  end
  return shuffled_array
end
puts 'What words would you like shuffled?'
words = []
while true
  word = gets.chomp
  if word == ''
    break
  end
  words.push word
end
puts (shuffle words).to_s
