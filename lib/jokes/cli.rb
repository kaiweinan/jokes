#CLI controller

# require 'httparty'

# resp = HTTParty.get('https://official-joke-api.appspot.com/jokes/ten')

# puts resp

class Jokes::CLI 

    def call
        puts "Welcome to the archive of Jokes!"
        get_category
        list_category
        #get_user_category
        #get_user_list
        #get_user_joke
        #save_joke
    end

    def get_category
        @category = ['General Jokes', 'Programming Jokes']
    end

    def list_category
        @category.each_with_index do |c, index| 
        puts "#{index+1}. #{c}"
    
        end
    end
end
