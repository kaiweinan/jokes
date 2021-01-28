require "httparty"

class Api 
    attr_accessor :url

   def initialize(url)
    @url = url

   end

   def jokes(name)
    req_url= "#{url}"
    data = HTTParty.get(req_url)
    puts data.keys
   end
end

api = Api.new("https://official-joke-api.appspot.com/jokes/")
api.jokes()