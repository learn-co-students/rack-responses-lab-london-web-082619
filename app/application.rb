require 'time'

class Application
    def call(env)
        resp = Rack::Response.new

        x = Time.now.hour

        if x < 12
            resp.write "Good Morning!"
        else
            resp.write "Good Afternoon"
        end
       
        resp.finish
       

    end
end