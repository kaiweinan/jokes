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
        stash.each.with_index do |joke, index|
         puts "#{index+1}. #{joke.setup}, #{joke.punchline}"
        end
        call
    end

    # def save_joke(jokes)
    #     input3 = gets.strip.to_i
    #     if input3 > 0 && input3 <= jokes.length
    #         stash << jokes[input3.to_i - 1]
    #     else
    #         call
    #     end
    # end

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
          call
        elsif input == "stash"
            display_stash
        elsif input == "exit"
            exit
        else 
            puts "try again!"
          call
      end
    end

    
    def punchline(jokes)
        puts ""
        puts "Enter a number for the punch line"
        input2 = gets.strip.downcase
        joke = jokes[input2.to_i - 1]
        puts "#{joke.setup}...            #{joke.punchline}"
        puts ""
        puts "select which joke you want to save or press 0 for more jokes!"
        input = gets.strip.to_i
        if input > 0 && input <= jokes.length
            stash << jokes[input.to_i - 1]
        elsif input == 0
            call
     end
     call
    end
end
