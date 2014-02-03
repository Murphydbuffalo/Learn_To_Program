def factorial number
  if number <0
    return 'Cannot take factorial of a negative number.'
  elsif number == 0 || number == 1
     return 1 #Don't need to use "return", can just have the value.
  elsif number >1
     return number * factorial(number-1)  #No "puts" because you use puts below to display the method.
  end
end

puts factorial 55
