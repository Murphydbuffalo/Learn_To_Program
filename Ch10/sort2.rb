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
unsorted2 = []

def sort_list unsorted, sorted, unsorted2 #Must separate variables by commas.  No parentheses needed.
  unsorted.each do |compare|
    if     unsorted.last.downcase <= compare 
           sorted = sorted.push unsorted.last
           unsorted.pop
           sort_list(unsorted, sorted, unsorted2)      
    else
           unsorted2 = unsorted2.push unsorted.last
           unsorted.pop       
           sort_list(unsorted, sorted, unsorted2)
    end
    if     unsorted = []
           unsorted = unsorted2
           unsorted2 = []
           sort_list(unsorted, sorted, unsorted2)
    elsif  unsorted == [] && unsorted2 == []
           return sorted
    end
  end #Need to close out the "do" block.    
sorted
end

puts sort_list(unsorted, sorted, unsorted2) #Again, need to use commas to separate the variables.
                                            #But must also surround the variables with parentheses.