def sort some_array
  recursive_sort some_array, []
end
def recursive_sort unsorted_array, sorted_array
  small = unsorted_array[0]
  unsorted_array.each do |word|
    if word < small
      small = word
    end
  end
  sorted_array.push small
  unsorted_array.delete small
  while unsorted_array.size != 0
    recursive_sort unsorted_array, sorted_array
  end
  return sorted_array
end
puts 'What words would you like sorted?'
words = []
while true
  word = gets.chomp
  if word == ''
    break
  end
  words.push word
end
puts (sort words).to_s
