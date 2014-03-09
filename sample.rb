require "bicorn"

out_file = File.open("out.log", "a")
err_file = File.open("err.log", "a")
$stdout = Bicorn.out(out_file)
$stderr = Bicorn.err(err_file)

puts 'hoge'
raise 'fuga'
