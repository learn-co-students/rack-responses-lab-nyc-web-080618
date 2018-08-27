class Application

def call(env)

  resp = Rack::Response.new

  greeting = Time.now
    if greeting.hour < 12
      resp.write "Good Morning!"
    elsif greeting.hour >= 12
      resp.write "Good Afternoon!"
    end

  resp.finish
end # end of call method
end # end of Application Class
