#CLI controller

require 'httparty'

resp = HTTParty.get(https://official-joke-api.appspot.com/jokes/ten)

puts resp

# class Jokes::CLI

#     def call
#         puts "list of Jokes"

#     end

#     def list_jokes
#         puts << DOC

# end
