require 'rack'

#A Rack application is any Ruby object that responds to the call method, takes a single hash parameter and returns an
#array containing the response status code, HTTP response headers and the response body as an array of strings.

#app = Proc.new do |env|
#  ['200', {'Content-Type' => 'text/html'}, ['A barebones rack app.']]
#end
#
#Rack::Handler::WEBrick.run app

class HelloRack
  def call(env)
    [
        200,
        {"Content-Type" => "text/html"},
        ["Hello Rack!"]
    ]
  end
end

#source code for Rack::Handler::WEBrick ---> https://github.com/rack/rack/blob/master/lib/rack/handler/webrick.rb
Rack::Handler::WEBrick.run(HelloRack.new, :Port => 3000)