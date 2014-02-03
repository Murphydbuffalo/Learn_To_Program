def profile block_name, &block #Note the syntax.
  activate = false
  if activate
  start = Time.new
  block.call
  duration = Time.new - start
  puts "#{block_name} run time: #{duration} seconds."
end
end

profile "Double 25,000 Times" do #The "do"'s are understood to run the "&block".
  number = 1
25000.times do
  number = number + number
end
end

profile "Count to 1,000,000" do 
  number = 0
  1000000.times do
    number = number + 1
  end
end



