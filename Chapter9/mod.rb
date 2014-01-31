def even_odd number

  puts 'Enter in a number between 1 and 10 and I\'ll tell you'
  puts ' if it\'s even or odd.'
  number = gets.chomp.to_i
  
while (number >0 && number <11)
if
  number%2 == 0
  puts 'The number is even.'
else
  puts 'The number is odd.'
end
break
end
end

even_odd 8

