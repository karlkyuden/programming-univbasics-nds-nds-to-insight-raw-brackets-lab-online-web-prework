$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)

  newHash = Hash.new
  row_index = 0

  while row_index < directors_database.length do
    column_index = 0
    grandTotal = 0
    while column_index < directors_database[row_index].length do
      grandTotal +=directors_database[row_index][:movies][column_index][:worldwide_gross]
      puts "The grandTotal at the moment is #{grandTotal}"
      column_index += 1
    end
    
    director = directors_database[row_index][:name]
    newHash[director] = grandTotal
    puts "The grand total of #{director} is #{grandTotal}"
    row_index += 1
  end
  return newHash
end

