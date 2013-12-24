line_width = 55
beer=99

puts ('99 Bottles of Beer on The Wall'.center(line_width))
puts ('by Some Lady'.center(line_width))
puts ''

puts 'Say "Begin!" to start the song.  
You must count the number of beers we\'ve had after every line if you want me to keep singing.  
For example you would yell "1" after the first line.  And say "Stop!" if you\'ve had enough.'

  input = gets.chomp
  
  input == 'Begin!'
  puts beer.to_s+' bottles of beer on the wall, '+beer.to_s+' bottles of beer!  
  Take one down, pass it around '+(beer-1).to_s+' bottles of beer on the wall.'

while true 
  
  input = gets.chomp
  
  puts  (beer-(input.to_i)).to_s+' bottles of beer on the wall, '+(beer-(input.to_i)).to_s+' bottles of beer.  
  Take one down, pass it around '+((beer-1)-(input.to_i)).to_s+' bottles of beer on the wall.'
        
  if input == "Stop!"
        break     
   end
   
end
   
   
     
      
