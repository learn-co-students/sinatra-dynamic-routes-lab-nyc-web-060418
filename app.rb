require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get "/reversename/:name" do
    "#{params[:name].reverse}"
  end

  get "/square/:number" do
    "#{params[:number].to_i ** 2}"
  end

  get "/say/:number/:phrase" do
    array = []
    params[:number].to_i.times do
      array << params[:phrase]
    end
    array.join(' ')
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    array = []
    params.each do |key, word|
      array << word
    end
    array.join(' ') + '.'
  end

  get "/:operation/:number1/:number2" do
    case params[:operation]
    when "add"
      (params[:number1].to_i + params[:number2].to_i).to_s
    when "subtract"
      (params[:number1].to_i - params[:number2].to_i).to_s
    when "multiply"
      (params[:number1].to_i * params[:number2].to_i).to_s
    when "divide"
      (params[:number1].to_i / params[:number2].to_i).to_s
    end
  end

end
