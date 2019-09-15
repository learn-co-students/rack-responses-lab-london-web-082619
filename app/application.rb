# If it's before noon, greet the user with "Good Morning!"
# If it's after noon, greet the user with "Good Afternoon!". 
# Remember that getting the time may return results in 24 hour time! Anytime after 12 is the afternoon.

class Application 

    def call(evn) #env holds all of the reuest info in it
        resp = Rack::Response.new # returns a response which consists of the status code, any headers, and the body. 
        
        if Time.now.hour >= 12
             resp.write "Good Afternoon!"
        else
            resp.write "Good Morning!"
        end

        resp.finish #completes the response

    end

end
