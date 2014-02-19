# -----------------
# If / Else
# -----------------

age = 55

if age < 40
  puts "The person is young"
else
  puts "The person is old"
end

# -----------------
# Switch (case/when)
# -----------------

car_model = "Fiesta"

case car_model
  when "Fiesta", "Focus"
    puts "The model belongs to Ford"
  when "208", "308"
    puts "The model is Peugeot's"
end