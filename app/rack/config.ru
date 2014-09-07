map '/' do
  run Proc.new { |env| ['200', {'Content-Type' => 'text/html'}, ['index']] }
end

map '/version' do
  run Proc.new { |env| ['200', {'Content-Type' => 'text/html'}, ['1.0']] }
end