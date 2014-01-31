byecount = 0
puts 'ELLO LOVE!'
while true
  say = gets.chomp
  if say != say.upcase
    byecount = 0
    puts 'EH?!  SPEAK UP!'
  elsif say == say.upcase && say != 'BYE' 
    byecount = 0
    puts 'NO, NOT SINCE '+(1920+rand(31)).to_s+'.'
  end
    if byecount <2 && say == 'BYE' 
      byecount = (byecount + 1)
    puts 'NO, NOT SINCE '+(1920+rand(31)).to_s+'.'
    elsif byecount >=2 && say == 'BYE'
        byecount = (byecount + 1)
    end
        if byecount == 3 
          puts 'OH ALRIGHT, BYE NOW.'
          break
        end      
end

