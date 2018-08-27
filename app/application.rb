class Application

  def call(env)
    resp = Rack::Response.new

    now = Time.now
    if now.hour <= 12
        resp.write "Good Morning"
    else
        resp.write "Good Afternoon"
    end
    resp.finish
  end

end
