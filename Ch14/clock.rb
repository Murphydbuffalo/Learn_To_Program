def clock &action
  if Time.new.hour < 12
    say = "#{Time.new.hour}:00 a.m."
  elsif Time.new.hour == 24
    say = "12:00 a.m."
  else
    say = (Time.new.hour.to_i-12).to_s+':00 p.m.'
  end
  hours = Time.new.hour.to_i 
  puts say
  hours.times do
  action.call
  end
end

clock do
  puts "Pinggggggg"
end