class Array
   #Runs the method on every other time in the array
  def alternate &block_proc #Syntax, the & is needed before the proc name to allow the method to grab whatever blocks of code (below in this case) that you want to pass into the method.
    even = true
    self.each do |item| #Where "self" is the array that you run this method on.  
      if even #== true
        block_proc.call item #You could've just typed the block's string in here, but the point is that you can change in ANY block of code here 
      end 
      even = !even #If true makes false, if false makes true.
    end
  end
end

array = [1, 2, 3, 4, 5, 6] #The following block has been inserted into the method as a proc
array.alternate do |number| #Thus "block_proc".  This is allowed b/c of the "&".
  puts "#{number} is an odd number." 
end # *** Now you can write any block of code and run the method on it

=begin
The advantage of this seems to be that you only need to write the method once,
and can then apply it to however many different blocks you need to.  
Not doing it this way would mean you not only would have to write out each block
you need, but you would also have to create a nearly identical method to put 
that block in.  That violates Don't Repeat Yourself.
Note that you never specified 
=end