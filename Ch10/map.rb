w = 'water' #Can't use uppercase "L" as a variable because variables start with lowercase letters and constants start with uppercase, usually.
l = 'land'

map =[[w, w, w, w, l, l, w],  #Remember arrays start coutning at 0.  
      [w, w, l, w, l, w, w],  #So this is a 6x6 grid
      [l, l, l, l, l, l, w],  
      [w, l, l, l, l, l, w],  
      [w, l, l, w, l, w, w],
      [w, l, l, l, w, l, w],
      [w, w, w, w, w, w, w]]
#In the terminal it doesn't matter if you put each array on a separate line...they will still be listed in a one column list and not a grid.  Does the computer know to recognize this as a grid?

def measure map, x, y    
  if map[x][y] != 'land' || x >= 6 || y >= 6 #Ensures water, counted land, and coordinates
    return 0                                 #off the grid aren't counted.
  end
  
  size = 1
  map[x][y] = 'counted land' #Marks the starting tile as something bedsides Land.  Every tile surrounding the starting tile becomes the "new starting tile" as the the recursion happens.
  
  size = size + measure(map, x-1, y-1) #Each of these lines is run again and again until
  size = size + measure(map, x, y-1)   #a non-land square is encountered. 
  size = size + measure(map, x+1, y-1) #That's the recursive part.
  size = size + measure(map, x-1, y)
  size = size + measure(map, x+1, y)
  size = size + measure(map, x-1, y+1)
  size = size + measure(map, x, y+1)
  size = size + measure(map, x+1, y+1)
  
  size
end

puts measure(map,3,3)