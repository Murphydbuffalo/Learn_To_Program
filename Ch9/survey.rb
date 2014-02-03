def ask topic
  puts topic
  while true
    answer = gets.chomp.upcase
    if answer == 'YES'
      return true
    elsif answer == 'NO'
      return false
    elsif answer != 'YES' || answer != 'NO'
      puts 'Please answer using "Yes" or "No" only.'
    end
  end
  result
end
  
  puts ask 'Do you eat mushrooms?'
  puts 'Thank you for your input.'
  