require "sinatra"
require "sinatra/reloader"

=begin
1) Create home routine (rules) - copy past html from Target
2) Create Play Rock, Play Paper, Play Scissors routines
3) Create View for Play Rock, Play Paper, Play Scissors
4) layout: add "Play Rock", "Play Paper", "Play Scissors" links
=end

get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
end
