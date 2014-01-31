line_width = 50
bottles = 99
puts '99 Bottles of Beer'.center(line_width)

while true
  if bottles > 2
  puts bottles.to_s + ' bottles of beer on the wall, '+bottles.to_s+' bottles of beer.'
  puts 'Take one down, pass it around. '
  puts (bottles-1).to_s + ' bottles of beer on the wall.'
  bottles = (bottles-1)
  elsif bottles == 2
    puts bottles.to_s + ' bottles of beer on the wall, '+bottles.to_s+' bottles of beer.'
    puts 'Take one down, pass it around. '
    puts (bottles-1).to_s + ' more bottle of beer on the wall.'
    bottles = 1
  elsif bottles == 1
    puts 'One more bottle of beer on the wall, one more bottle of beer.'
    puts 'Take one down, pass it around. '
    puts 'No more bottles of beer on the wall!'
    break
  end
end
  
   
   
