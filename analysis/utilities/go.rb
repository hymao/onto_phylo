require 'json'
require 'byebug'
require 'awesome_print'

j = JSON.parse(File.read('dependency.json'))['dependancies']

csv = "char_id\tchr_id_dependent_upon\tchr_state_dependent_upon\n" 

j.each do |k,v|

  a, b = k.split(':') 
  c, d = v.split(':')

  csv << "#{a}\t#{b}\t#{c}\n"
end

puts csv


