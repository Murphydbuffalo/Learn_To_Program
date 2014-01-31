def to_english number
  'Enter in a whole number between 0 and 100 and I\'ll convert it to English.'
  if number > 100 || number < 0
  'Please pick a whole number between 0 and 100.'
  end
  if number/10 == 9
    tens = 'Ninety'
  elsif number/10 == 8
    tens = 'Eighty'
  elsif number/10 == 7
    tens = 'Seventy'
  elsif number/10 == 6
    tens = 'Sixty'
  elsif number/10 == 5
    tens = 'Fifty'
  elsif number/10 == 4
    tens = 'Fourty'
  elsif number/10 == 3
    tens = 'Thirty'
  elsif number/10 == 2
    tens = 'Twenty'
  elsif number/10 == 1 && number != 10 && number != 11 && number != 12
    tens = 'teen'
  end
  if number%10 == 0
      ones = ''
  elsif number%10 == 9
      ones = 'Nine'
  elsif number%10 == 8
      ones = 'Eight'
  elsif number%10 == 7
      ones = 'Seven'
  elsif number%10 == 6
      ones = 'Six'
  elsif number%10 == 5
      ones = 'Five'
  elsif number%10 == 4
      ones = 'Four'
  elsif number%10 == 3
      ones = 'Three'
  elsif number%10 == 2
      ones = 'Two'
  elsif number%10 == 1
      ones = 'One'
  end
  if number == 100
    return 'One Hundred'
  elsif number == 0
    return 'Zero'
  elsif number == 10
    return 'Ten'
  elsif number == 11
    return 'Eleven'
  elsif number == 12
    return 'Twelve'
  elsif number == 13
    return 'Thirteen'
  elsif number == 15
    return 'Fifteen'
  elsif number > 19
    return tens+' '+ones
  elsif number < 20 && number > 13  && number != 15
    return ones+tens 
  elsif number > 0 && number < 10
    return ones
  end
end

puts to_english 16

