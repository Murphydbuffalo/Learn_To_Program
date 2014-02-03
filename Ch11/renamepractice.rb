Dir.chdir '/Users/murphydbuffalo/Pictures/Album_Covers'

puts 'What would you like to call this group of pictures?'
group_name = gets.chomp

pics = Dir['/Users/murphydbuffalo/Pictures/Test/*.{jpeg,jpg}']

print "Getting #{pics.length} files, one moment please."
puts

counter = 1

pics.each do |original_name|
  print "Working. . ."
  if counter <10
    new_name = "#{group_name}0#{counter}.jpeg" #Don't forget the .jpeg or the computer won't know they're pictures!
  else
    new_name = "#{group_name}#{counter}.jpeg"
  end
  
  File.rename original_name, new_name
  
  counter = counter + 1
end

puts #Gets you off of the "print" lines.
puts "Your pictures are now in '/Users/murphydbuffalo/Pictures/Album_Covers'."
