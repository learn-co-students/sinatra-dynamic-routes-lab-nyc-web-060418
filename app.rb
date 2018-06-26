require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @rev_name = params[:name]
    @rev_name.reverse
  end

  get '/square/:number' do
    @square_num = params[:number]
    square = @square_num.to_i
    @res = square* square
    @res.to_s
  end

  get '/say/:number/:phrase' do
    answer = ""
    phrase = params[:phrase]
    num = params[:number].to_i
    num.times do
      answer << phrase
    end
    answer
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    res = nil
    if params[:operation] == "add"
      res = num1 + num2
    elsif params[:operation] == "subtract"
      res = num1 - num2
    elsif params[:operation] == "multiply"
      res = num1 * num2
    else
      res = num1 / num2
    end
    res.to_s
  end

end
