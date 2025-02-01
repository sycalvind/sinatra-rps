require "sinatra"
require "sinatra/reloader"

=begin
1) Create home routine (rules) - copy past html from Target - done!
2) Create Play Rock, Play Paper, Play Scissors routines
3) Create View for Play Rock, Play Paper, Play Scissors
4) layout: add "Play Rock", "Play Paper", "Play Scissors" links
=end

get("/") do
  erb(:home)
end

moves = ["rock", "paper", "scissors"]

get("/:player_move") do
  @player_move = params.fetch("player_move")
  @cpu_move = moves.sample
  if @cpu_move == @player_move
    @outcome = "tied"
  elsif (@cpu_move == "paper" && @player_move == "rock") || (@cpu_move == "scissors" && @player_move == "paper") || (@cpu_move == "rock" && @player_move == "scissors")
    @outcome = "lost"
  else @outcome = "won"
  end
  erb(:game)
end

=begin
get("/rock") do
  @player_move = "rock"
  @cpu_move = moves.sample
  if @cpu_move == "rock"
    @outcome = "tied"
  elsif @cpu_move == "paper"
    @outcome = "lost"
  else 
    @outcome = "won"
  end
  erb(:game)
end

get("/paper") do
  @player_move = "paper"
  @cpu_move = moves.sample
  if @cpu_move == "rock"
    @outcome = "won"
  elsif @cpu_move == "paper"
    @outcome = "tied"
  else 
    @outcome = "lost"
  end
  erb(:game)
end

get("/scissors") do
  @player_move = "scissors"
  @cpu_move = moves.sample
  if @cpu_move == "rock"
    @outcome = "lost"
  elsif @cpu_move == "paper"
    @outcome = "won"
  else 
    @outcome = "tied"
  end
  erb(:game)
end
=end
