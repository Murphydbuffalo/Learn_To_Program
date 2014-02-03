class Integer
def factorial 
  if self <0
    return 'Cannot take factorial of a negative number.'
  elsif self == 0 || self == 1
     return 1 
  elsif self >1
     self * (self-1).factorial #Cannot change the value of self to do factorial(self-1) as before.
     #But can apply the factorial method to arithmetic as in (self-1).factorial.
  end
end
end
puts 5.factorial