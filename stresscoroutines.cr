require "http/client"

response = HTTP::Client.get "http://www.google.com"
puts response.status_code