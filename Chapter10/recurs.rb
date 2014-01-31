def survey question #method followed by paramter/variable.
  puts question
  reply = gets.chomp.downcase
  
  if reply == 'good'
    true
  elsif reply == 'bad'
    false
  elsif reply != 'good' && reply != 'bad'
    puts 'Please answer "good" or "bad".'
    survey question
  end
end

survey 'How\'s it going?' #You can define the parameter variable outside of the method.


#Key point:  There is no "While" because the loop has been replaced by line 11, which reruns the method.
