#Write methods at write (save) and read (load) files.

require 'yaml'

def write object, filename
  File.open filename, 'w' do |f|
    f.write object.to_yaml
  end
end

def read filename
  string_object = File.read filename #Ie, a string version of the object is simply the content of the file you've just written, which was converted to a string by YAML.
  YAML::load(string_object) #And this loads that YAML'd file.
end

filename = 'Hadoop.txt'
toc = ['bullshit', 'bullshit', 'bullshit']

write(toc, filename)
original_object = read(filename)

puts (original_object == toc)
