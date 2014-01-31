puts "What year were you born in?"
year = gets.chomp.to_i
puts "What number month were you born in?"
month = gets.chomp.to_i
puts "And what day were you born on?"
day = gets.chomp.to_i

bday = Time.local(year, month, day)
year = 60*60*24*365
age = Time.new - bday
puts 'SPANK!'*(age/year).to_i
