key = {}
key['i'] = [1]
key['ii'] = [2]
key['iii'] = [3]
key['iv'] = [4]
key['v'] = [5]
key['vi'] = [6]
key['vii'] = [7]
key['viii'] = [8]
key['ix'] = [9]


puts "Enter in a roman numeral and I'll give you the appropriate number."
  length = 0
  numeral = gets.chomp.to_s
  if numeral[-0] == 'i' && numeral[-1..-0] != 'ii' && numeral[-1..-0] !='vi'
     ones = 1 
     length = 1
   elsif numeral[-1..-0] == 'ii' && numeral[-2..-0] != 'iii' && numeral[-2..-0] !='vii'
      ones = 2
      length = 2
    elsif numeral[-2..0] == 'iii' && numeral[-3..-0] != 'viii' 
       ones = 3
       length = 3
     elsif numeral[-1..0] == 'iv'
        ones = 4
        length = 2
      elsif numeral[-0] == 'v'
         ones = 5
         length = 1
       elsif numeral[-1..0] == 'vi'
          ones = 6
          length = 2
        elsif numeral[-2..0] == 'vii'
           ones = 7
           length = 3
         elsif numeral[-3..0] == 'viii'
            ones = 8
            length = 4
          elsif numeral[-1..0] == 'ix'
             ones = 9
             length = 2
  end
value = ones

puts value 



#key['x'] = [10]
#key['xl'] = [40]
#key['l'] = [50]
#key['xc'] = [90]
#key['c'] = [100]
#key['d'] = [500]
#key['m'] = [1000]