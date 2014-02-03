class Dice

  def initialize
    roll
  end
  
  def roll
    @amount = 1 + rand(6) #@amount is an INSTANCE VARIABLE, or a variable that is not merely local to the method it is used in. Instance variables stay with the objects they are associated with as long as the object exists.  Name comes from string = string object = instance of class String.
  end
  
  def value
    @amount #No puts necessary, this just sets the value of value at @amount.
  end
  
  def cheat
    sneak = gets.chomp.to_i
    if sneak <7 && sneak >0
    @amount = sneak
    puts 'Shhhhh...'
    else
    @amount = 6
    puts 'Shhhhh...'
    end
  end
end

red_die = Dice.new
black_die = Dice.new

dice = [red_die, black_die]

red_die.roll
black_die.cheat

dice.each do |cast|
  puts cast.value
end




