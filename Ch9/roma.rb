def roman 
  puts 'Enter a whole number between 1 and 100 '
  puts 'and I\'ll show you the Roman Numeral equivalent.'
    
      number = gets.chomp.to_i      
      if number < 1 || number >100
         puts 'Please enter a number between 1 and 100.'
      elsif number == 100
            puts 'C' 
      elsif number >=90 && number <100
            if number%10 != 4 && number%10 != 9 
              puts 'XC' + ('V'*((number%10)/5)).to_s + ('I'*(number%5)).to_s
            elsif number%10 == 4
              puts 'XCIV'
            elsif number%10 == 9
              puts 'XCIX'
            end
      elsif  number >=50 && number <90
            if number%10 != 4 && number%10 != 9
              puts 'L'+('X'*((number-50)/10)).to_s + ('V'*((number%10)/5)).to_s + ('I'*(number%5)).to_s
            elsif number%10 == 4
              puts 'L'+('X'*((number-50)/10)).to_s + 'IV'
            elsif number%10 == 9
              puts 'L'+('X'*((number-50)/10)).to_s + 'IX'
            end  
      elsif number >= 40 && number < 50
            if number%10 != 4 && number%10 != 9
              puts 'XL' + ('V'*((number%10)/5)).to_s + ('I'*(number%5)).to_s
            elsif number%10 == 4
              puts 'XLIV'
            elsif number%10 == 9
              puts 'XLIX'
            end
      elsif number >= 1 && number < 40 
            if number%10 != 4 && number%10 != 9
              puts ('X'*(number/10)).to_s + ('V'*((number%10)/5)).to_s + ('I'*(number%5)).to_s
            elsif number%10 == 4
              puts ('X'*(number/10)).to_s + 'IV'
            elsif number%10 == 9
              puts ('X'*(number/10)).to_s + 'IX'
            end
      end        
end

roman  



    
  






    
      
      
    
      
      
      
  
 
      
      
      
      
  
  
  
  
    
    