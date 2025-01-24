require "sinatra"
require "sinatra/reloader"

bank = Array.new
bank.push("rock")
bank.push("paper")
bank.push("scissors")

get("/") do
  erb(:home)
end

get("/rock") do
  @our_choice = "rock"
  index = rand(0..2)
  @random = bank.at(index)

  if @our_choice == @random
    @result = "We tied!</h2>"
  elsif @random == "scissors"
    @result = "We won!"
  else
    @result = "We lost!"
  end

  erb(:setup, { :layout => :wrapper })
end

get("/paper") do
  @our_choice = "paper"
  index = rand(0..2)
  @random = bank.at(index)

  if @our_choice == @random
    @result = "We tied!</h2>"
  elsif @random == "scissors"
    @result = "We lost!"
  else
    @result = "We won!"
  end

  erb(:setup, { :layout => :wrapper })
end

get("/scissors") do
  @our_choice = "scissors"
  index = rand(0..2)
  @random = bank.at(index)

  if @our_choice == @random
    @result = "We tied!</h2>"
  elsif @random == "paper"
    @result = "We won!"
  else
    @result = "We lost!"
  end

  erb(:setup, { :layout => :wrapper })
end
