def to_english number
  'Enter a whole number and I\'ll show it to you in English'
  
  if number < 0
  number = number.abs
  end
  
  oddballs = ['', 'eleven', 'twelve', 'thirteen','fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']
  
  ones = ['', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
  
  tens = ['', 'ten', 'twenty', 'thirty', 'fourty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
  
  hundreds = [(ones[0]), (ones[1]+' hundred'), (ones[2]+' hundred'), (ones[3]+' hundred'), (ones[4]+' hundred'), (ones[5]+' hundred'), (ones[6]+' hundred'), (ones[7]+' hundred'), (ones[8]+' hundred'), (ones[9]+ ' hundred')]
  
  val_mil = hundreds[number/100000000]+' '+tens[(number%100000000)/10000000]+' '+ones[(number%10000000)/1000000]
  
  if number >= 1000000
     mil = ' million'
  else
     mil = ''
  end
  
  val_thous = hundreds[(number%1000000)/100000]+' '+tens[(number%100000)/10000]+' '+ones[(number%10000)/1000] 
  
  if number >= 1000 && number <1000000
       thou = (' thousand'*((number/1000)/(number/1000)))
  elsif number > 1000000 && number%1000000 != 0
       thou = ' thousand'*((number%1000000/1000)/(number%1000000/1000))
  else
       thou = ''
  end
  
  val_hun = hundreds[(number%1000)/100]
   
  val_teen = ''
   
  val_ten = ' ' + tens[(number%100)/10]
   
  val_one = ' ' + ones[(number%10)]
   
  if (number%100) > 10 && (number%100) < 20
     val_ten = '' 
     val_one = ''
     val_teen = ' ' + oddballs[(number%100)-10]
  end
 
  string = val_mil + mil + ' ' + val_thous + thou + ' ' + val_hun + val_teen + val_ten + val_one
                                      
  if number > 0
    return string
  elsif number == 0
    return 'Zero'
  elsif number <0
    return 'Negative '+string
  end
end

puts to_english 1010000