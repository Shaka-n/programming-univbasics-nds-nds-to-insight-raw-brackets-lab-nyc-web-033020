$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def print_directors_database
  pp directors_database
  pp directors_database[0][:movies][0][:worldwide_gross]
end


def directors_totals(nds)
  director_index=0
  result = Hash.new {|h, k| h[k] = 0}
  while director_index < nds.length do
    director_name = nds[director_index][:name]
    puts director_name
    movie_index = 0 
    movie_max= nds[director_index][:movies].length
    director_index+=1
    while movie_index < movie_max do
        result[director_index] = nds[director_index][:movies][movie_index][:worldwide_gross]
        movie_index+=1
end
end
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"

  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
  puts 
  result
end

print_directors_database