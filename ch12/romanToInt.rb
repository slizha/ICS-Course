def rom_to_int roman
  roman = roman.downcase
  numerals = {}
  num = 0
  numerals['m'] = 1000
  numerals['d'] = 500
  numerals['c'] = 100
  numerals['l'] = 50
  numerals['x'] = 10
  numerals['v'] = 5
  numerals['i'] = 1
  while roman.length > 1
    if numerals.key?(roman[0]) == false
      puts "This is not a roman numeral."
      return
    end
    if numerals[roman[0]] >= numerals[roman[1]]
      num += numerals[roman[0]]
      roman = roman[1, roman.length - 1]
    else
      num += numerals[roman[1]] - numerals[roman[0]]
      roman = roman[2, roman.length - 1]
    end
  end
  if roman.length == 1
    num += numerals[roman[0]]
  end
  return num
end
puts 'What roman numeral would you like converted?'
roman = gets.chomp
puts rom_to_int(roman).to_s
