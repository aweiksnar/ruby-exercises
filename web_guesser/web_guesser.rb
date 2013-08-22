# Jumpstart Lab WebGuesser Sinatra Project
# http://tutorials.jumpstartlab.com/projects/web_guesser.html

require 'sinatra'
require 'sinatra/reloader' if development?

set :secret_number, rand(100)

get "/" do
  guess = params["guess"]
  message = check_guess(guess)
  erb :index, :locals => {:number => options.secret_number, :message => message}
end

def check_guess(guess)
  if guess.is_a? String
    guess = guess.to_i
    if guess - 5 > options.secret_number
      "Way Too High"
    elsif guess > options.secret_number
      "Too high"
    elsif guess + 5 < options.secret_number
      "Way too low"
    elsif guess < options.secret_number
      "Too Low"
    else
      "You got it! The secret number is #{options.secret_number}"
    end
  else
    "Try and guess the secret number"
  end
end



