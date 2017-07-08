def log(block_description)
  puts 'Beginning "' + block_description + '"...'
  returned = yield
  puts '..."' + block_description + '" finished, returning: ' + returned.to_s
end
log 'outer block' do
  log 'some little block' do
    log 'teeny-tiny block' do
      'lots of love'
    end
    5
  end
  log 'yet another block' do
    'I like Thai food!'
  end
  false
end
