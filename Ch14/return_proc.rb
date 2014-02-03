def compose proc1, proc2
   Proc.new do |x|
    proc2.call(proc1.call(x)) #Don't forget to use .call when putting procs inside of procs/methods.
  end
end

square = Proc.new do |x|
 (x * x)
end

double = Proc.new do |x|
  (x + x)
end

puts compose(square,double).call(10) #Note the syntax here, you're using .call on a METHOD... I'm assuming because it's made up of a proc.




