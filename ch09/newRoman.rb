# I realize I brute forced this and I should have used division in the first place
# but I already wrote it all out so I'm leaving it
def new_Rom num
  rom_num = ''
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
  return rom_num
end
puts new_Rom 890
