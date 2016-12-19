require "rest-client"

def get_input
  puts "What would you like to search?"
  print ">> "
  search = gets.chomp.split.join("+")
end

def bing_response(search)
  RestClient.get("http://www.bing.com/search?q=#{search}")
end

def start_app
  response = bing_response(get_input)
  puts "\nThe HTTP response code is: \n#{response.code}"
  puts "\nThe hash of HTTP response headers is: \n#{response.headers}"
  puts "\nThe response body is: \n#{response.body}"
  puts "\nThe hash of HTTP cookies set by the server is: \n#{response.cookies}"
end

start_app