require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    #binding.pry
    params[:name].reverse
  end

  get '/square/:number' do
   @squared = params[:number].to_i ** 2
   @squared.to_s
  end

  get '/say/:number/:phrase' do
  #  binding.pry
    params[:phrase] * params[:number].to_i
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
      # binding.pry
      case @operation
      when "add"
        (@num1 + @num2).to_s
      when "subtract"
        (@num1 - @num2).to_s
      when "multiply"
        (@num1 * @num2).to_s
      when "divide"
        (@num1 / @num2).to_s
      else
        "What do u want"
      end
    end
  end
