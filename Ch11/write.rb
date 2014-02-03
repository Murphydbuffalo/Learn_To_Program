require 'yaml' #This "imports" YAML into Ruby (not a part of it normally).
#YAML converts non-string objects, like arrays, into strings for file writing.

filename = 'Example.txt' #Name the file.
content = ["and a", "one", "and a", "two", "and a", "three"] #Content to be written into the file.

def save object, filename #You can put the write (save) portion in one method...
  File.open filename, 'w' do |f| #"W" is for "write-access", allows us to write the file.
    f.write object.to_yaml #".write" 's the variable "string_content" in to the file.
  end #Ruby closes the file for you automatically.
end

def load filename #And the read (load) portion in another...
  file_string = File.read filename #Reads the file, which is only the string at this point.
  YAML::load file_string 
  #Converts the "yaml'd" string back into its original form as an array.
end

#And then write (save) a file with one line of code, an read (load) the file with another

save(content, filename) #Method does the .to_yaml for you.

original_string = load(filename)

puts(original_string == content) #Original string function loads (reads) the file which has only the original content converted to a string by YAML.


