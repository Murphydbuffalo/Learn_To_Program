#Can use ".." to set a range of string characters, integers, etc.  Can turn those ranges into arrays (.to_a), find the .min and .max, ask if a character is .include?

range = 1..10 #"puts"'ing this will only display 1..10, not the whole range.
puts range 
puts range.to_a #However, using .to_a will display the entire range.

no_inc_range = 1...10 #The extra . excludes the maximum value.
puts no_inc_range
puts no_inc_range.to_a

string = 'x' .. 'z'

puts string.min
puts string.max
puts string.include?('y')