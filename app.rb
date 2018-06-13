require_relative 'config/environment'

class App < Sinatra::Base
  get "/reversename/:name" do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get "/square/:number" do
    @num = params[:number].to_i
    "#{@num * @num}"
  end

  get "/say/:number/:phrase" do
    @num = params[:number].to_f
    @phrase = params[:phrase].split("%20")
    binding.pry
     @num.times do
       "#{@phrase.join(" ")}"
     end
  end
end
