require 'pry'
require_relative "./models/clown"

krusty = Clown.new("Krusty", 55, "Juggling Chainsaws", "Failure")
fizbo = Clown.new("Fizbo", 44, "Kids birthday parties", " I'm scared of loosing lily")

# Instance methods tests to run

# krusty.name 
# krusty.name = "Krusty the Krustacular"
# krusty.name 
# krusty.fears = "Children"
# krusty.overcome_fears
# fizbo.say_hi
# fizbo.name
# fizbo.fears
# fizbo.age
# fizbo.lie_about_age(70)
# fizbo.age

# Class method tests
clown_names = Clown.names
fearless_clowns1 = Clown.fearless
find_clown_by_name = Clown.find_by_name ("Fizbo")
oldest_clown = Clown.oldest
fizbo.overcome_fears
fearless_clowns2 = Clown.fearless


binding.pry
"pls"