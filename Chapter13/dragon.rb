class Dragon
  
  def initialize name
    @name = name
    @asleep = false
    @food = 10
    @poop = 0
    
    puts "#{@name} is born."
  end
  
  def feed
    puts "You feed #{@name}."
    @food = 10
    passage_of_time
  end
  
  def walk
    puts "You walk #{@name}."
    @poop = 0
    passage_of_time
  end
  
  def put_to_bed
    puts "You put #{@name} to bed."
    @asleep = true
    3.times do
      if @asleep 
        passage_of_time
      end
      if @asleep
        puts "#{@name} snores..."
      end
    end
      if @asleep
         @asleep = false
        puts "#{@name} wakes up slowly."
      end
    end
    
    private
    
    def hungry?
      @food <= 2
    end
    
    def potty?
      @poop >= 8
    end
    
    def passage_of_time
      if @food > 0
        @food = @food - 1
        @poop = @poop + 1
      else
        if @asleep
          @asleep = false
          puts "#{@name} wakes up suddenly!"
        end
        puts "#{@name} is starving and in desperation, he ate YOU!"
        exit
      end
      
      if @poop >= 10
        puts "#{@name} had an accident!"
        @poop = 0
      end
      
      if hungry?
        if @asleep 
          @asleep = false
          puts "#{@name} awakes!"
        end
        puts "#{@name}'s tummy rumbles..."
      end
      
      if potty?
        if @asleep
          @asleep = false
          puts "#{@name} wakes up!"
        end
        puts "#{@name} does the potty dance!"
      end
    end
end

guy = Dragon.new 'Norbert'
guy.feed
guy.walk
guy.put_to_bed
guy.put_to_bed
guy.put_to_bed
guy.put_to_bed
guy.put_to_bed
  
  
  