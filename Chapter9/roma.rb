def convert number
  puts 'Enter a whole number between 1 and 100 '
  puts 'and I\'ll show you how it would have '
  puts 'originally appeared as an ancient Roman numeral.'
  number = gets.chomp.to_i
  while (number >0 && number <=3000)
    if number < 5
      puts 'I'*number
    elsif (number >4 && number <10) 
      puts ('V'*(number/5)).to_s+('I'*(number%5)).to_s
    elsif (number >10 && number <50)
      puts ('X'*(number/10)).to_s+('V'*((number%10)/5)).to_s+('I'*(number%5)).to_s
    elsif (number >50 && number <100)
      puts ('L'*(number/50)).to_s+('X'*((number%50)/10)).to_s+('V'*((number%10)/5)).to_s+('I'*(number%5)).to_s
    elsif (number == 100)
      puts 'C'
    end
    break
  end
end
  
  convert 100
  
  
  
  
  
    
    