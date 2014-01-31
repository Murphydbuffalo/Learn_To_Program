Dir.chdir '/Users/murphydbuffalo/Pictures/Destination' #The files will save to your current directory.

pics = Dir['/Users/murphydbuffalo/Pictures/Randoms/*.{jpg,JPEG,png}'] #Grabs all jpegs from Test

puts 'What would you like to name the pictures?'
group_name = gets.chomp
puts
print "Getting #{pics.length} files..." #Length of the array is number of files.
puts
pic_counter = 1

pics.each do |name|
  print '. . .' #Progress bar, if you were taking these off of a cameras SD card each one would take a minute.
  
  pic_name = if pic_counter <10  #Must define "pic_name" before using it with the "rename" command?
    "#{group_name}0#{pic_counter}.jpg"
  else
    "#{group_name}#{pic_counter}.jpg"
  end
  
  File.rename name, pic_name #"name" is from the .each command.  It says each item in the array will be renamed to the new "pic_name" based on the above logic.
  
  pic_counter = pic_counter + 1
  
end #End of "do" block.

puts #To move you off of the progress bar line.

puts "Your files are now in 'Users/murphydbuffalo/Pictures/Randoms'."


    