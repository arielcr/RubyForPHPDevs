class Post
  attr_reader :title, :body, :author
  def initialize(title, body, author)
    @title = title
    @body = body
    @author = author
  end
end

# Para crear un arreglo
posts = [
    Post.new("First Post", "Some random body", "Ariel Orozco"),
    Post.new("Second Post", "Another random body", "Ariel Orozco"),
    Post.new("Third Post", "Long live the king!", "Ariel Orozco")
]

# Esto es lo mismo que array_map en PHP
puts posts.map { |post| post.title }

last_post = Post.new("Fourth Post", "N/A", nil)

# Esto es lo mismo que array_push en PHP, tambien se puede usar push
posts << last_post

# Esto es igual a count() en PHP, tambien se puede usar size o count
puts posts.length

# Esto es igual a in_array() en PHP
puts posts.include? last_post

puts posts.select { |post| post.title == "First Post" }





