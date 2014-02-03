def make_list 
  puts 'Enter the items you want on your list.'
  puts 'Press "enter" when finished and I\'ll alphabetize the list.'
  list = []
  while true
    item = gets.chomp
    if item == ''
      return list #Must put before the break or it will return nil.
      break
    elsif item != ''
      list = list.push item
    end
  end
end



unsorted = make_list
sorted = []
x = 0
def sort_list unsorted, sorted, x #Must separate variables by commas.  No parentheses needed.  
      if x > unsorted.length
         x = 0
         sort_list(unsorted, sorted, x)   
      elsif sorted.length == unsorted.length
         return sorted  
      end
  unsorted.each do |compare|
      if   unsorted[x] <= compare 
           sorted = sorted.push unsorted[x]
           unsorted[x] = []
           sort_list(unsorted, sorted, x+1)      
      else
           sort_list(unsorted, sorted, x+1)
      end #End logic                     
  end #End block    
  puts sorted
end #End method

sort_list(unsorted, sorted, x) #Again, need to use commas to separate the variables.
                               #But must also surround the variables with parentheses.



  
  
  




      