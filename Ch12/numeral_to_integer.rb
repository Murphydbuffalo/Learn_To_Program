def integer 
  puts "Enter a roman numeral up to 100 \nusing only the characters I,V,X,L and C."
  numeral = gets.chomp.to_s.downcase
  check = numeral.downcase[0..(numeral.length)]
  check.each do |letter|
  if letter == 'i' || letter == 'v' || letter == 'x' || letter == 'l' || letter == 'c' ||
    if numeral[-0].chr == 'i' && numeral[-1..-0].chr != 'ii' && numeral[-1..-0].chr !='vi'
       ones = 1 
       length = 1
     elsif numeral[-1..-0].chr == 'ii' && numeral[-2..-0].chr != 'iii' && numeral[-2..-0].chr !='vii'
        ones = 2
        length = 2
      elsif numeral[-2..0].chr == 'iii' && numeral[-3..-0].chr != 'viii' 
         ones = 3
         length = 3
       elsif numeral[-1..0].chr == 'iv'
          ones = 4
          length = 2
        elsif numeral[-0].chr == 'v'
           ones = 5
           length = 1
         elsif numeral[-1..0].chr == 'vi'
            ones = 6
            length = 2
          elsif numeral[-2..0].chr == 'vii'
             ones = 7
             length = 3
           elsif numeral[-3..0].chr == 'viii'
              ones = 8
              length = 4
            elsif numeral[-1..0].chr == 'ix'
               ones = 9
               length = 2
    end
  puts ones
  else 
     puts "Please enter a valid roman numeral using only the characters I, V, X, L or C."
     puts integer
  end
end

end

integer

#The .chr method is useful, returns the actual letter you specify with [], not just the character code, numerical value.