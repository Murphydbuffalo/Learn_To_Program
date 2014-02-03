$count = 0
$end_count = 0
def log block_name, &block
  $count = $count+1
  puts ' '*$count+'Beginning '+block_name.downcase+'.'
  result = block.call #can say "yield" instead of block.call (must remove &block then)
  indent = (' '*($count-$end_count))
  puts indent+block_name.capitalize+' completed, returns: ' + result.to_s
  $end_count = $end_count + 1
end

 log "early chapters file count" do
  early_files = Dir['/Users/murphydbuffalo/Desktop/github/Learn_To_Program/EarlyChs']
    if early_files.length > 8
      true
    else
      false
    end
   log "current chapter file count" do
    current_files = Dir['/Users/murphydbuffalo/Desktop/github/Learn_To_Program/Ch14']
      if current_files.length > 8
        true
      else
        false
      end
      log "mid chapter file count" do
       mid_files = Dir['/Users/murphydbuffalo/Desktop/github/Learn_To_Program/Ch12']
         if mid_files.length > 8
           true
         else
           false
         end
       end
    end
  end

