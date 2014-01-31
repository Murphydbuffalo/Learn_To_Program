class Penguin
  
  def initialize name #When you add a parameter to "initialize" you enter the parameter on the same line where you create a new object of the class with Class.new
    @name = name
    @asleep = false
    @belly = 10
    @poop = 0
    
    puts "#{@name} hatches from underneath father penguin."
  end
  
  def feed
    puts "You feed #{@name}."
    time_passes
    @belly = 10
  end
  
  def walk
    puts "You take #{@name} for a walk."
    time_passes
    @poop = 0
  end
  
  def nap
    puts "You put #{@name} down for a nap."
    @asleep = true
    3.times do
      time_passes
    end
  end
  
  def wake
   puts "You give #{@name} a nudge. He wakes up."
    @asleep = false
  end
  
  private #Makes the following methods internal to the object in question.  So the user can't pose pengy.hungry? to find out if Pengy is hungry.
  
  def hungry?
    @belly <= 2
  end
  
  def potty?
    @poop >= 8
  end
  
  def time_passes
    if @belly > 0
       @belly = @belly - 1
       @poop = @poop + 1
     else
       if @asleep == true
         puts "#{@name} wakes up suddenly!"
         @asleep == false
       end
        puts "#{@name}'s tummy rumbles once again."
        puts "#{@name} slides away into the ocean to fend for himself, you selfish bastard."
        exit
    end
  
    if @poop >= 10
       puts "#{@name} has shat all over you!"
       puts "#{@name} slides away into the ocean to fend for himself, you selfish bastard."
       exit
    end
  
    if hungry? 
      if @asleep == true
        puts "#{@name} awakes and his stomache rumbles."
        @asleep = false
      else puts "#{@name}'s stomache rumbles."
      end
    end
    
    if potty? 
      if @asleep == true
        puts "#{@name} awakes and he does the potty dance."
        @asleep = false
      else puts "#{@name} does the potty dance."
      end
    end
  end 
end


pengy = Penguin.new 'Pengy' #This string comes from the initialize parameter.
pengy.feed
pengy.nap
pengy.nap
pengy.walk
pengy.nap
pengy.nap
pengy.nap
pengy.nap
  
  
  