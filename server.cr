require "http/server"

server = HTTP::Server.new do |context|
  p context.request.body.not_nil!.gets_to_end
  context.response.content_type = "text/plain"
  context.response.print "Hello world!"
end

address = server.bind_tcp 443
puts "Listening on http://#{address}"
server.listen