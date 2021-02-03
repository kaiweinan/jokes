
class Jokes::Api 

   attr_accessor :url

   @@all= []

   def initialize(url= nil)
      @url = "https://official-joke-api.appspot.com/jokes/ten"
      save
   end

  def self.create_jokes(category)
    req_url= "https://official-joke-api.appspot.com/jokes/#{category}/ten"
     data = HTTParty.get(req_url)
    data.each do |data|
      
      jokes_hash = {
         id: data["id"],
        type: data["type"],
        setup: data["setup"],
        punchline: data["punchline"]
         }
      jokes = Jokes::Category.new(jokes_hash)
      end
      Jokes::Category.all
  end


 def self.all
  @@all
 end

 def save
  @@all << self
 end

end
