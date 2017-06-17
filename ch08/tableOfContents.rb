table = [['Chapter 1: Getting Started', 'page  1'],
         ['Chapter 2: Numbers', 'page  9'],
         ['Chapter 3: Letters ', 'page 13'] ]
line_width = 50
puts 'Table of Contents'.center(line_width)
puts ''
table.each do |tab|
  chap = tab[0]
  page = tab[1]
  puts chap.ljust(line_width/2 + 1) + page.rjust(line_width/2 - 1)
end
