cigar = Proc.new do 
  puts "Stoagies?! Why not?" 
end

booze = Proc.new do #You can interchange multiple procs into methods.
  puts "I don't drink, sorry."
end


def double proc
  puts "You look like a strapping young lady."
  puts "Shall we?"
    2.times do
      proc.call #Use .call to run a proc.
    end
  puts "Splendid!"
end

def maybe proc
  if rand(2) == 1 #Remember, rand(2) means from 0 up to 1!
    puts "You look like a strapping young lady."
    puts "Shall we?"
    proc.call #Use .call to run a proc.
    puts "Splendid!"
  end
end

double cigar  
maybe booze



=begin 
Procs are objects.  They can be passed through methods.  They store their code in a "do" block.
Because methods are NOT objects you can't pass a method into a method, or return a method in a method
as you can with procs.
You can use parameters with procs, by placing the |parameter| after the "do".  
=end