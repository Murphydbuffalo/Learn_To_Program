class Array
def shuffle 
  mix = self.sort_by{rand}
end
end
list = ['one', 'two', 'three', 'four']
puts list.shuffle



