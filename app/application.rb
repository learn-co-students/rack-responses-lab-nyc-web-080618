class Application

  def call(env)
    resp = Rack::Response.new
    time = Time.now

    if time.hour < 12
      resp.write "Good Morning"
    else
      resp.write "Good Afternoon"
    end # end if time.hour

    resp.finish
  end # call

end # class Application
