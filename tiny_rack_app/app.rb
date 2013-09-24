class TinyApp
  require 'rack/lobster'

  def call(env)
    request = Rack::Request.new(env)
    case request.fullpath
    when "/" then [200, {"Content-Type" => "text/plain"}, ["Welcome to the root url"]]
    when %r{/lobster*} then Rack::Lobster.new.call(env)
    else [200, {"Content-Type" => "text/plain"}, ["Hello, Thank you for visiting #{request.fullpath}"]]
    end
  end
end

class TinyMiddleware
  def initialize(app)
    @app = app
  end

  def call(env)
    status, headers, body = @app.call(env)
    body << "\n\nThis app is terrible. Why not check out /lobster?" if body.is_a? Array
    [status, headers, body]
  end
end
