require 'date'

class Application

    def call(env)
        resp = Rack::Response.new

        # time = Time
        # resp.write "The time is #{time.hour}:#{time.min}"

        if Time.now.hour > 12
            resp.write "Afternoon"
        elsif Time.now.hour < 12
            resp.write "Morning"
        end
        resp.finish
    end
end