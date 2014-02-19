# -----------------------
# Regular Class
# -----------------------

class User

  # setters / getters

  # solo lectura
  attr_reader :username

  # solo escritura
  attr_writer :first_name, :last_name

  # ambos
  attr_accessor :username

  # constructor
  def initialize username, first_name, last_name
    @username = username
    @first_name = first_name
    @last_name = last_name
    @loggedin = false
  end

  def authenticate password
    stored_password = findPassword self

    if password == stored_password
      @loggedin = true
      return true
    end

    false
  end

  # metodos privados
  private

  def findPassword user
    "secret"
  end

end

# --------------------------
# Class with static method
# Se usa self para declarar metodos estaticos
# --------------------------

class StringUtils
  def self.capitalize_words string
    words = string.split " "
    words.each { |word| word.capitalize! }
    words.join " "
  end
end


user = User.new "arielcr", "Ariel", "Orozco"

if user.authenticate("secret")
  puts "Usuario valido!"
else
  puts "Usuario invalido!"
end

puts user.username

puts StringUtils.capitalize_words "hello world from ruby!"