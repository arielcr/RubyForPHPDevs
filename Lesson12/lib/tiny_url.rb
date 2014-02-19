require 'httparty'
require 'rainbow/ext/string'

class TinyUrlService
  attr_reader :url

  def initialize url
    @url = url
  end

  def call
    response = HTTParty.get "http://tinyurl.com/api-create.php?url=#{@url}"
    puts "The URL is: " + response.color(:blue)
  end
end

print "Enter the URL here: " + "http://".color(:green)

TinyUrlService.new("http://#{gets.strip}").call

