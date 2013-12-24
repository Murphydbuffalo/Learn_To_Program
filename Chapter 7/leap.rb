puts 'Tell me two years and I\'ll tell you all of the leap years in between and including.'

puts 'First year please.'

year1 = gets.chomp.to_i

puts 'Thank you.  Second year now.'

year2 = gets.chomp.to_i

puts 'Gracias.  The leap years in that period are:'

leap = year1.to_i
 
while year1 <= year2
 
  if ((leap%4 == 0)&&((leap%100 != 0)||(leap%400 == 0)))
    puts leap.to_i
  end

year1 = year1 + 1

end
   


