class Array
  def shuffle
    recursive_shuffle self, []
  end

  def recursive_shuffle(some_array, shuffled_array)
    until some_array.empty?
      num = rand(some_array.size)
      shuffled_array.push some_array[num]
      some_array.delete some_array[num]
      recursive_shuffle some_array, shuffled_array
    end
    shuffled_array
  end
end
class Integer
  def factorial
    return 'You can\'t take the factorial of a negative number!' if self < 0
    if self <= 1
      1
    else
      self * (self - 1).factorial
    end
  end

  def toRoman
    num = self
    rom_num = ''
    if self < 1 || self >= 3000
      num = 0
      puts 'Please enter a number between 0 and 3000'
    end
    while num > 0
      if num >= 1000
        rom_num += 'M'
        num -= 1000
      elsif num >= 900
        rom_num += 'CM'
        num -= 900
      elsif num >= 500
        rom_num += 'D'
        num -= 500
      elsif num >= 400
        rom_num += 'CD'
        num -= 400
      elsif num >= 100
        rom_num += 'C'
        num -= 100
      elsif num >= 90
        rom_num += 'XC'
        num -= 90
      elsif num >= 50
        rom_num += 'L'
        num -= 50
      elsif num >= 40
        rom_ num += 'XL'
        num -= 40
      elsif num >= 10
        rom_num += 'X'
        num -= 10
      elsif num >= 9
        rom_num += 'IX'
        num -= 9
      elsif num >= 5
        rom_num += 'V'
        num -= 5
      elsif num == 4
        rom_num += 'IV'
        num -= 4
      else
        rom_num += 'I'
        num -= 1
      end
    end
    rom_num
  end
end
array = [1, 2, 3, 4, 5]
puts array.shuffle
puts 5. factorial
puts 899.toRoman
