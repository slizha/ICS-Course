def profile(block_description)
  prof = false
  if prof
    start_time = Time.new
    yield
    duration = Time.new - start_time
    puts "#{block_description}: #{duration} seconds"
  else
    block.call
  end
end
