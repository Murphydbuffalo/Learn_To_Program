line_width = 45

puts 'Enter in what you need from the store, line by line, '
puts 'and I\'ll repeat it back to you.'
puts 'So far you have:  '.center(line_width)

list = []

while true
  
list = gets.chomp

  if list == ''
    break
  end

  list.push list
end

puts 'Here\'s your list.'
puts list.sort

