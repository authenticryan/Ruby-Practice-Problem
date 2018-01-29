require "sinatra"

get("/") do
    erb(:welcome)
end

get("/apple") do
    "Here's a juicy apple"
end

