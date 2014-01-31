unsorted1 = make_list
sorted = []
unsorted2 = []
def shuffle_list unsorted1, sorted, unsorted2 #Must separate variables by commas.  No parentheses needed.

    if     unsorted1.last.length <= unsorted1[rand(unsorted1.length)].length
           sorted = sorted.push unsorted1.last
           unsorted1.pop
           shuffle_list(unsorted1, sorted, unsorted2)      
    elsif  unsorted1.last.length > unsorted1[rand(unsorted1.length)].length
           unsorted2 = unsorted2.push unsorted1.last
           unsorted1.pop       
           shuffle_list(unsorted1, sorted, unsorted2)
    elsif  unsorted1 = []
           unsorted1 = unsorted2
           unsorted2 = []
           shuffle_list(unsorted1, sorted, unsorted2)
    elsif  unsorted1 == [] && unsorted2 == []
           return sorted
    end  
sorted
end

puts shuffle_list(unsorted1, sorted, unsorted2) #Again, need to use commas to separate the variables, and must also surround the variables with parentheses.