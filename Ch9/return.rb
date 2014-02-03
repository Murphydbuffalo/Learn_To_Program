def ask question
  
  while true
    puts question
    reply = gets.chomp.capitalize
    if reply == 'Yes'
      return true
    else 
      return false
    end
    
    if (reply == 'Yes' || reply == 'No')  
        puts 'Thank you for participating.'
        break  
    else 
        puts 'Please answer using only "Yes" or "No".' 
    end 
  end #closes out all of the if/else's? Why do we need this one?
  end #closes out the method
  
puts ask 'Is it true what they say?'  #the puts lets you see true/false
  
