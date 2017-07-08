def grandfatherClock
  time = Time.new.hour
  time -= 12 if time > 12
  while time > 0
    yield
    time -= 1
  end
end

grandfatherClock do
  puts 'DONG!'
end
