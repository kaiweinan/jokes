
require 'httparty'
require 'pry'

require_relative './jokes/version'
require_relative './jokes/cli'
require_relative './jokes/category'
require_relative './jokes/api'

 

module Jokes
    class Error < StandardError; end

end