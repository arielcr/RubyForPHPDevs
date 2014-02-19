require 'mail'

Mail.defaults do
  delivery_method :smtp, {
      :address => "smtp.gmail.com",
      :port => 587,
      :domain => 'gmail.com',
      :user_name => 'bassplayer85',
      :password => "mmsrb0385",
      :authentication => 'plain',
      :enable_starttls_auto => true
  }

end

mail = Mail.new do
  from "Ariel Orozco"
  to "bassplayer85@gmail.com"
  subject "Hello from Tutsplus"
  body "We've made it!"
end

mail.deliver!

puts "Email was sent."
