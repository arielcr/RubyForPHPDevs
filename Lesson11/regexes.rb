puts /(br|c)a/ =~ "abracadabra"

match_data = /(br|c)a/.match "abracadabra"

puts match_data.captures.inspect
puts match_data.to_a

puts "-------------------------"

puts Regexp.escape "This is *some* markdown text."

puts "-------------------------"

puts "Ariel Orozco".gsub(/(\w+) (\w*)/, '\2, \1')

