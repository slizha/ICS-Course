Dir.chdir 'C:/Documents and Settings/Katy/PictureInbox'
pic_names = Dir['F:/**/*.jpg']
puts 'What would you like to call this batch?'
batch_name = gets.chomp
puts
print "Downloading #{pic_names.length} files: "
pic_number = 1
pic_names.each do |name|
  print '.'
  new_name = if pic_number < 10
  "#{batch_name}0#{pic_number}.jpg"
  else
  "#{batch_name}#{pic_number}.jpg"
  end
  if new_name.exist == true
    puts "The file #{new_name} already exists. Would you like to overwrite it? Please enter yes, no, or exit."
    response = gets.chomp
    while response != 'yes' || 'no' || 'exit'
      puts 'Please enter yes, no, or exit.'
      response = gets.chomp
    end
    if response == 'exit'
      exit
    end
    if response == 'no'
      puts 'What would you like this file to be called?'
      new_name = gets.chomp
    end
  end
  File.rename name, new_name
  pic_number = pic_number + 1
end
puts
puts 'Done.'
