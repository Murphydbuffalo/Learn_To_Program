Dir.chdir '/Users/murphydbuffalo/Music'

songs = Dir['/Users/murphydbuffalo/Music/Jack Johnson/**/*.mp3']

filename = 'Jack Playlist.m3u' 

shuffled = []

def shuffle list, shuffled
  if  shuffled.length < list.length  
    if  shuffled.last != list[rand(list.length)]
        shuffled = shuffled.push list[rand(list.length)]
        shuffle(list,shuffled)
      else  
            shuffle(list,shuffled)
    end
  else   
         return shuffled
  end
end

mix = shuffle(songs, shuffled)

def write object, filename
  File.open filename, 'w' do |f|
    object.each do |line|
      f.write line+"\n" #Newline character, separates items in the array (or string) by line.
    end
  end
end

write(mix, filename)
  


  