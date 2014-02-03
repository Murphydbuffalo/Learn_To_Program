puts 'Enter items into your shopping list.'
puts 'Press "Enter" to finish the list and I will alphabetize it for you.'

list = []

while true
  input = gets.chomp
  if input != ''
    list = list.push input
  elsif input == ''
    puts list.sort
    break
  end
end
 