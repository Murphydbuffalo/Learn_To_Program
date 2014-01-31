puts 'Starting year, please.'
year1 = gets.chomp.to_i

puts 'Now, ending year, please.'
year2 = gets.chomp.to_i

while year1 <= year2
  if year1%4 == 0 && (year1%100 !=0 || year1%400 == 0)
    puts year1
    year1 = (year1+1)
  else
    year1 = (year1+1)
  end
end
