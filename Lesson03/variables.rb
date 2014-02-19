# -----------------
# Local Variables
# -----------------

a = 1
b = 2

puts "[Ruby]\n\n"

puts "Add two local variables: #{a + b}"

# ----------------------
# Instance variables
# ----------------------

class A

  # Constructor
  # Variables de instancia se declaran con @
  def initialize
    @a = 1
  end

  # Metodo
  # No es necesario el uso de return, ultima expresion es lo que se retorna, pero se puede usar
  def printA
    "Show instance variable: #{@a}"
  end

  def printB
    b
  end

  def printC
    $c
  end

end

# Crear la objeto de la clase y usar un metodo
object = A.new
puts object.printA

# Tambien se puede hacer asi, porque la clase A tambien es un objeto en si misma
puts A.new.printA

# -----------------
# Global Variables
# -----------------

$c = 17
puts "Global $c can be accesed from within objects."
puts A.new.printC

