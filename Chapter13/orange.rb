class Tree
  
  def initialize 
    puts "What kind of tree would you like to plant?"
    kind = gets.chomp
    @kind = kind
    @age = 0
    @max_fruit = 0
    @fruit = 0
    @height = 0
    
    puts "The lovely #{@kind} tree you planted has finally sprouted."
  end
  
  def time
    if @age == 0
      puts "The tree's first year is over."
      puts "It has already begun to grow larger."
      puts "No signs of fruit yet though."
      @height = (@age/2)
      @max_fruit = 0
      @age = @age + 1
    end
    if @age > 0 && @age <= 8
      puts "Another year has come and gone."
      puts "The #{@type} tree continues to grow."
      puts "Although there are still no signs of fruit."
      @height = (@age/2)
      @max_fruit = 0
      @age = @age + 1
    end
    if @age == 9
      puts "Another year has come and gone."
      puts "The #{@type} tree is now quite large."
      puts "And finally, you see fruit to pick!"
      @height = (@age/2)
      @max_fruit = (@age-8) 
      @age = @age + 1
    end
    if @age > 9 && @age <= 120
      puts "Another 10 years has come and gone."
      puts "The #{@type} tree is now quite large."
      puts "And there is more fruit to enjoy than in years past."
      @height = (@age/2)
      @max_fruit = (@age-8)
      @age = @age + 10
    end
    if @age > 120 && @age < 180
      puts "Another 10 years has come and gone."
      puts "The #{@type} tree is very old, and looks quite ancient."
      puts "There is still much fruit, although not quite as much as before"
      @height = 60
      @max_fruit = 112-(@age-120)
      @age = @age + 10
    end
    if @age == 180
      puts "Another year has come and gone."
      puts "Sadly your #{@kind} tree has withered and died."
      exit
    end
  end
  
  def check
    puts "The #{@kind} tree is now #{@height} feet tall."
    puts "And you count #{@max_fruit} #{@kind}s on the tree."
  end
  
  def pick
    if @max_fruit > 0
    puts "You take a delicious #{@kind} down from the tree."
    @max_fruit = @max_fruit - 1
    else
      puts "There's no more fruit to take!"
    end
  end
end

tree = Tree.new  

puts 'Say "check" to see the height of your tree and whether it has any fruit.'
puts "Although it may take several years for fruit to appear."
puts 'Say "pick" to take a fruit down and eat it.'
puts 'Say "time" to pass time so your tree can grow.'
puts "Unfortunately, eventually your tree will die."
puts "Most (virtual) tree don't live to be 200."
puts 'Say "done" if you want to stop.'

while true #Can replace this loop with the methods themselves, so they run without interactivity.
  input = gets.chomp.downcase
  if input == 'check'
    tree.check
  elsif
    input == 'pick'
    tree.pick
  elsif input == 'time'
    tree.time
  elsif input == 'done'
    break
    "Arrivederci!"
  end
end
  



    
  