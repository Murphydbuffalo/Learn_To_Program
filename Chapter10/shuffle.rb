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

list = make_list
shuffled = []

def shuffle list, shuffled
  if  shuffled.length < list.length  
    if  shuffled.last != list[rand(list.length)]
        shuffled = shuffled.push list[rand(list.length)]
        shuffle(list,shuffled)
      else  
            shuffle(list,shuffled)
    end
  else   
         return shuffled
  end
end

puts shuffle(list, shuffled)