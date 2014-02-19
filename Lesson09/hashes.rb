# Los hashes son como los arrays asociativos (multidimensionales) en PHP
def tag(name, content, options)
  list = []
  options.each do |key, value|
    list.push "#{key}='#{value}'"
  end

  attributes = list.join " "

  "<#{name} #{attributes}>\n" +
      "#{content}\n" +
      "</#{name}>"
end

# Se usa : para definir simboles, que son un tipo especial de string (mas ligero)
puts tag "li", "Homepage", {
    :title => "Esto es un item de la lista",
    :class => "big active",
    :id => "nav-home"
}

hash = {
    :title => "Esto es un item de la lista",
    :class => "big active",
    :id => "nav-home"
}

# Para obtener los values
puts hash.values

# Para obtener los keys
puts hash.keys

puts "-------------"

puts hash.invert.inspect

puts "-------------"

puts hash.include? :title

