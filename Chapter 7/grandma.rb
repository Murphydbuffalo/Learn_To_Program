puts 'Say hi to your grandmother.  Be mindful that she\'s hard of hearing though.'
  
byecount = 0   
  
while true 

 says = gets.chomp
  
  if says == 'BYE'
       byecount = byecount + 1
  else 
       byecount = 0
  end
  
  if byecount >= 3
     puts 'BYE NOW!'
     break
  end

  if says != says.upcase  
     puts 'HUH?  SPEAK UP!'
  else 
     puts 'NO, NOT SINCE '+((rand(21))+1930).to_s
  end
  
end







