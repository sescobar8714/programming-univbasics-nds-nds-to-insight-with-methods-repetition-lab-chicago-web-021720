$LOAD_PATH.unshift(File.dirname(__FILE__))
require_relative './directors_database'
require 'pry'

def directors_totals(source)
  result = {}
  director_index = 0
  #binding.pry
  while director_index < source.size do
    director = source[director_index]
    result[director[:name]] = gross_for_director(director)
    director_index += 1
  end
  result
end

def gross_for_director(d)

  total = 0
  index = 0

  while index < d[:movies].length do
    total += d[:movies][index][:worldwide_gross]
    index += 1
  end

  total
end

def list_of_directors(source)
first_array = []
  i = 0
  #binding.pry
  while i < source.count
  first_array << source[i][:name]
  i += 1

  end  # Write this implementation
  first_array
end


def total_gross(source)
  temp_dir_total = directors_totals(source)
  temp_dir_list = list_of_directors(source)
  total = 0
  i = 0

  while i < temp_dir_list.count do
    director_name = temp_dir_list[i]
    total += temp_dir_total[director_name]
    i += 1
  end
total

  # Should use methods:
  # 1. directors_totals: returns a Hash of { dir_name => gross }
  # 2. list_of_directors: names provides an Array of directors names (use
  #
  # Visit each key (i.e. director name), look up the value in the hash
  # returned by directors_totals, and add it to a running total. When done,
  # return the total
end
