require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @username = params[:name].reverse
    "#{@username}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    product = @number * @number
    "#{product}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    string = String.new

    @number.times do
      string += "#{@phrase}\n"
    end
    string

  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    @words = @word1 + " " + @word2 + " " + @word3 + " " + @word4 + " " + @word5
    "#{@words}."
  end

  get '/:operation/:number1/:number2' do
    @operate = params[:operation].to_s
    @num1  = params[:number1].to_i
    @num2 = params[:number2].to_i

    if @operate == "add"
       product = @num1 + @num2
      "#{product}"
    elsif @operate == "multiply"
       product = @num1 * @num2
       "#{product}"
    elsif @operate == "divide"
       product = @num1 / @num2
       "#{product}"
    elsif @operate == "subtract"
       product = @num2 - @num1
       "#{product}"
    end

  end
end
