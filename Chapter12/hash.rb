#Like arrays, but you can choose the name of each slot.  So, instead of 0, 1, 2, 3 etc...   each slot could be a string name, or a random number.  Good for associating pairs of items.

nicknames = {}
nicknames['Tom Krier'] = ['TK']
nicknames['Ryan Browne'] = ['Brownie']
nicknames['Pat Fisher'] = ['Fish']
nicknames['Greg Bennett'] = ['GB']

puts nicknames

nicknames.each do |say|
  puts say
end

nicknames.each do |say|
  print say
end