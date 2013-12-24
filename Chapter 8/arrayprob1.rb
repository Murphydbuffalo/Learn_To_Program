line_width = 45

puts 'Enter in what you need from the store, line by line, '
puts 'and I\'ll repeat it back to you.'
puts 'So far you have:  '.center(line_width)

item = gets.chomp

while true
  
list = [item].push gets.chomp
  if item != ''
    list = [item].push gets.chomp
  end
  
if gets.chomp == ''
  puts 'Shopping list: '.center(line_width)
  puts list.sort
  break
end

end


