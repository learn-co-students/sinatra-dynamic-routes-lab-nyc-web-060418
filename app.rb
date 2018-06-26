require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @user_name = params[:name]
    @user_name.reverse
  end

  get '/square/:number' do
    @number = params[:number]
    "#{@number.to_i * @number.to_i}"
  end

  get '/say/:number/:phrase' do
    @phrase = params[:phrase]
    @number = params[:number]
    string = String.new
    #binding.pry
    @number.to_i.times do
      string += "#{@phrase}\n"
    end
    string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    arr = []
    params.each do |key, value|
      arr.push(value)
    end
    arr.join(' ') + "."
  end

  get '/:operation/:number1/:number2' do
    @num1 = params[:number1]
    @num2 = params[:number2]
    #binding.pry
    case params[:operation]
    when "add"
      (@num1.to_i + @num2.to_i).to_s
    when "subtract"
      (@num1.to_i - @num2.to_i).to_s
    when "multiply"
      (@num1.to_i * @num2.to_i).to_s
    when "divide"
      (@num1.to_i / @num2.to_i).to_s
    end
  end

end
