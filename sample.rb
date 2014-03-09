require "bicorn"

file = File.open("output.log", "a")

$stdout = Bicorn.out(file)

puts 'hoge'
