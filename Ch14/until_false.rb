def if_true input, proc
  value = input
  proc_return = input
  
  while proc_return
    value = proc_return #Ie the value will be continually passed to, and changed by the proc, and then the new value will be passed to the proc again.  If the proc returns a false value though, then the loop's "while" condition is broken and the most recent value returned by the proc is returned by the method. 
    proc_return = proc.call value #Can use a proc with a parameter inside of a method.
  end 
  value
end
  
  squares = Proc.new do |array|
    last = array.last #save this value for use even after it has bee removed from the array by .pop
    if array.last == 0
      false
    else 
      array.pop
      array.push last*last
      array.push(last-1)
    end
  end 

  nothing = Proc.new do |nothing| #returns whatever you put as the first parameter of the method.
    false
  end 
  
 tums = "Tum, tum, tum, tum...tummmmsss" 
  
 puts if_true([5],squares) #Reads each slot of the array down, one line at a time
 
 puts if_true([5],squares).to_s #Reads all data in the array as a one-line string
 
 puts if_true([5],squares).inspect # ***Shows you how the object would look in ruby***

