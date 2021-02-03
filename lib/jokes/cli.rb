

class Jokes::Cli

    attr_accessor :stash
    
    def initialize
    @stash = []
    welcome
    end

    def welcome
    puts "welcome to the archive of jokes!"
    end

    def stash
    @stash
    end

    def display_stash
        stash.each do |joke|
         puts joke.setup
        end
      end

    def save_joke(jokes)
        input3 = gets.strip.downcase
        joke = jokes
        if input3 == "yes"
            stash << joke
        else
            call
        end
    end

    def call
        puts ""
        puts"Type general, programming or knock-knock for a list of jokes. Type exit if you have no humor!"
        puts "or type stash for your saved jokes."
         input = nil
        input = gets.strip.downcase
        
        if input == "programming" || input == "general" || input == "knock-knock" 
          jokes = Jokes::Api.create_jokes(input)
          jokes.each.with_index do |c, index| 
            puts "#{index+1}. #{c.setup}" 
          end
          punchline(jokes)
          
          puts ""
          puts "Do you want to save this joke to your stash? yes or no?"
          save_joke(jokes)
          call
        elsif input == "stash"
            puts @stash
        elsif input == "exit"
            exit
        else 
            puts "try again!"
          call
         
        # end
      end
    end

    
        def punchline(jokes)
            puts ""
            puts "Enter a number for the punch line"
            input2 = gets.strip.downcase
            joke = jokes[input2.to_i - 1]
            puts "#{joke.punchline}"
              end

end
