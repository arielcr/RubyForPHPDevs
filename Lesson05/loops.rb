# ----------------
# While Loop
# ----------------

counter = 0

while counter < 10
  puts counter
  counter += 1
end


# ----------------
# For Loop
# .. si incluye al numero
# ... no incluye al numero
# ----------------

for i in 0...10 do
  puts i
end


# ----------------
# Foreach Loop
# ----------------

myHash = {
    "one" => 1,
    "two" => 2,
    "three" => 3
}

myHash.each do |key,value|
  puts "#{key} => #{value}"
end


# Ejemplo con ranges

(0..9).each do |number|
  puts number
end

0.upto(9) do |number|
  puts number
end