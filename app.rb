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
    @num = params[:number].to_i
    @phrase = params[:phrase].scan(/\w+/)
    binding.pry
    @num.times do
      "#{@phrase.join(" ")}"
    end
  end
end
