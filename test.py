# Using this for testing out bits of code

from map import Map

m = Map("Great Map")
m.save("save.map")
m = Map.load("save.map")
print(m.title)