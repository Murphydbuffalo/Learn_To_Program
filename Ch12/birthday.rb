require 'yaml'

Dir.chdir '/Users/murphydbuffalo/Documents/Birthdays'

def write object, filename
  File.open filename, 'w' do |f|
    f.write object.to_yaml
  end
end

def read filename
  string_object = File.read filename
  YAML::load string_object
end

list = {}
list['Dray'] = [Time.local(1990, 6, 26, 12, 0, 0)]
list['Doyle'] = [Time.local(1989, 2, 4, 12, 0, 0)]
list['Jimmy'] = [Time.local(1989,12,5, 12, 0, 0)]
list['Jared'] = [Time.local(1990,1,30, 12, 0 ,0)]
list['Brownie'] = [Time.local(1990, 4, 30, 0 ,0)]
list['TK'] = [Time.local(1990, 11, 9, 0 ,0 )]
list['Greg'] = [Time.local(1989, 11, 16, 0 ,0 )]

filename = "Birthdays.txt"

write(list, filename)

string_object = read(filename)

#year = 365*24*60*60

puts "Who's there?"
name = gets.chomp 
  if    name.downcase == 'dan'
        puts "Hello, Dan"
        puts "Whose birthday do you need to know?"
        reply = gets.chomp.to_s
        #bday = (string_object[reply])
        #age = (Time.new-bday) This doesn't work for some reason.
        puts string_object[reply]
        #puts "#{reply} is #{age} years old."
  else
        puts "Doppleganger!"
        break
  end




#birthdays = Dir['/Users/murphydbuffalo/Documents/Birthdays/Birthdays.txt'].to_yaml

#puts birthdays  ###Why won't this display the whole document?









