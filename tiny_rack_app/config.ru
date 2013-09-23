require "./app.rb"
use Rack::Reloader
use TinyMiddleware

run TinyApp.new
