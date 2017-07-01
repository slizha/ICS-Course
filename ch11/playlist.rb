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
songs = shuffle Dir['F:/**/*.mp3']
File.open 'playlist.m3u', 'w' do |f|
  songs.each do |mp3|
    f.write mp3+"\n"
  end
end
