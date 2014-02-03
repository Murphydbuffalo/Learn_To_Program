puts 'Welcome to class, what\'s your name?'

name = gets.chomp

if    name == name.capitalize
      puts 'Nice to meet you '+name+'.'  
else  puts 'Oops, you\'ve got a mistake there.  See it?'
      response = gets.chomp
      
      if    response == name.upcase
            puts 'Oh my.'
      else  puts 'Why don\'t we get started?'
      end       
  
end    




