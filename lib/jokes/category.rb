class Jokes::Category


attr_accessor :id, :setup, :punchline, :type

    @@all = []


    def initialize(hash)
        hash.each do |a, b|
        self.send("#{a}=", b)  
        end    
        self.save 
    end


    def self.all
    @@all
    end

    def save
    @@all << self
    end

end

puts Jokes::Category.all