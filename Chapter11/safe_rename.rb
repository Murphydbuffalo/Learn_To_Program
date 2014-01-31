Dir.chdir '/Users/murphydbuffalo/Pictures/Randoms'

pics = Dir['/Users/murphydbuffalo/Pictures/Storage/*.{jpg,jpeg,png}']

puts "What do you want to call this group of pictures?"
group_name = gets.chomp

puts "Getting #{pics.length} pictures.  One moment, please."

counter = 1

pics.each do |old_name|
  print "Working . . ."
  if counter <10
    new_name = "#{group_name}0#{counter}.jpg"
  else 
    new_name = "#{group_name}#{counter}.jpg"
  end
  
  File.exist? old_name
  if false
    File.rename old_name, new_name
    counter = counter + 1
  else
    puts "There is at least one duplicate file already in Randoms."
    puts "Do you want to overwrite any duplicate files? Answer 'yes' to continue."
    reply = gets.chomp
      if reply.downcase == 'yes'
        File.rename old_name, new_name
        counter = counter + 1
      else
        exit
      end
  end
  if  counter > pics.length
      puts "Your files are now in /Users/murphydbuffalo/Pictures/Randoms."
      exit
  end
end



