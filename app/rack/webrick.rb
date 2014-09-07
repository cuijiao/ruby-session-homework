#a toolkit package in Ruby
require 'webrick'

#an easy way to implement an web server
#server = WEBrick::HTTPServer.new :Port => 8000
#
#server.mount_proc '/' do |req, res|
#  res.body = 'Hello, world!'
#end
#
#server.start


#an advertisement way to implement an web server
class Simple < WEBrick::HTTPServlet::AbstractServlet
  def service request, response
    status, content_type, body = 200, 'text/plain', "color is color and size is size"

    response.status = status
    response['Content-Type'] = content_type
    response.body = body
  end
end

server = WEBrick::HTTPServer.new :Port => 8000
server.mount '/ruby', Simple
server.start
