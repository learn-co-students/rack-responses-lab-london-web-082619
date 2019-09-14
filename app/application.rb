class Application
    def call(env)
        resp = Rack::Response.new
         t1 = Time.now 
         if t1.strftime('%P') == "pm"
            resp.write "Good Afternoon!"
         else
            resp.write "Good Morning!"
         end
            resp.finish
    end
end