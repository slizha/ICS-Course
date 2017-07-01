dates = {}
File.read('birthdates.txt').each_line do |line|
  line = line.chomp
  dates[line[0,line.index(',')]] = line[line.index(',') + 1, line.length - 1]
end
puts 'Whose birthday are you looking for?'
name = gets.chomp
date = dates[name]
if date == nil
  puts "I don't have a birthday for that name."
else
  puts date
end
