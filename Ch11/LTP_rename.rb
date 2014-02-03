Dir.chdir '/Users/murphydbuffalo/Desktop/github/Learn_To_Program/'

folders = Dir['/Users/murphydbuffalo/Desktop/github/Learn_To_Program/']

def rename item
  item.each do |old_name|
  if old_name[-0] == '6' || old_name[-0] == 6
    new_name = "Ch#{old_name[-0]}"
    File.rename old_name, new_name
  end
end
end

rename folders
