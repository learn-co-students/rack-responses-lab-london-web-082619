class Application

    def call(env)
      resp = Rack::Response.new
  
      timestamp = Time.now.hour
  
      if timestamp <= 12
        resp.write "Good Morning!"
      else
        resp.write "Good Afternoon!"
      end
  
      resp.finish
    end
  
  end