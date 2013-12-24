line_width = 45

puts 'Enter in what you need from the store, line by line, '
puts 'and I\'ll repeat it back to you.'
puts 'So far you have:  '.center(line_width)

list = []

while true
  
item = gets.chomp

  if item == ''
    break
  end

  list.push item
end

puts 'Here\'s your list.'
puts list.sort

