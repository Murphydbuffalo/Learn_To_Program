class Integer
def roman       
      if self < 1 || self >100
         number = nil
      elsif self == 100
            number = 'C' 
      elsif self >=90 && self <100
            if self%10 != 4 && self%10 != 9 
              number = 'XC' + ('V'*((self%10)/5)).to_s + ('I'*(self%5)).to_s
            elsif self%10 == 4
              number 'XCIV'
            elsif self%10 == 9
              number 'XCIX'
            end
      elsif  self >=50 && self <90
            if self%10 != 4 && self%10 != 9
              number = 'L'+('X'*((self-50)/10)).to_s + ('V'*((self%10)/5)).to_s + ('I'*(self%5)).to_s
            elsif self%10 == 4
              number = 'L'+('X'*((self-50)/10)).to_s + 'IV'
            elsif self%10 == 9
              number = 'L'+('X'*((self-50)/10)).to_s + 'IX'
            end  
      elsif self >= 40 && self < 50
            if self%10 != 4 && self%10 != 9
              number = 'XL' + ('V'*((self%10)/5)).to_s + ('I'*(self%5)).to_s
            elsif self%10 == 4
              number = 'XLIV'
            elsif self%10 == 9
              number = 'XLIX'
            end
      elsif self >= 1 && self < 40 
            if self%10 != 4 && self%10 != 9
              number = ('X'*(self/10)).to_s + ('V'*((self%10)/5)).to_s + ('I'*(self%5)).to_s
            elsif self%10 == 4
              number = ('X'*(self/10)).to_s + 'IV'
            elsif self%10 == 9
              number = ('X'*(self/10)).to_s + 'IX'
            end
      end      
      number
end
end 

puts 55.roman  


