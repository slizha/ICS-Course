def old_Rom num
  rom_num = ''
  while num > 0
    if num >= 1000
      rom_num += 'M'
      num -= 1000
    elsif num >= 500
      rom_num += 'D'
      num -= 500
    elsif num >= 100
      rom_num += 'C'
      num -= 100
    elsif num >= 50
      rom_num += 'L'
      num -= 50
    elsif num >= 10
      rom_num += 'X'
      num -= 10
    elsif num >= 5
      rom_num += 'V'
      num -= 5
    else
      rom_num += 'I'
      num -= 1
    end
  end
  return rom_num
end
puts old_Rom 2310
