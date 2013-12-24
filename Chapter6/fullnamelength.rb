puts 'What is your first name?'
fname = gets.chomp 
puts 'Marvelous, what is your middle name?'
mname = gets.chomp
puts 'Fantastico, now what would your last name be?'
lname = gets.chomp
puts 'Hmm let\'s see.  So there are '+(fname.length+mname.length+lname.length).to_s+' characters in your full name, '+fname+'.'

