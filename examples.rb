require 'colorizr'

String.methods
String.colors

john = 'John'.red

puts "I've changed #{john}'s color!".light_blue
puts 'Paul'.green
puts 'George'.blue
puts 'Ringo'.yellow

p String.colors

String.sample_colors
