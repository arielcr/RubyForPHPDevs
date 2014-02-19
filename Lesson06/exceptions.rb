# ----------------
# Exceptions
# ----------------

def divide dividendo, divisor

  if !divisor.is_a?(Fixnum) || !dividendo.is_a?(Fixnum)
    raise ArgumentError, "Deben de ser dos numeros"
  end

  if divisor == 0
    raise StandardError, "Esta dividiendo entre cero"
  end

  dividendo / divisor

end

begin
  divide 5, 0
rescue StandardError => e
  puts e.message
end