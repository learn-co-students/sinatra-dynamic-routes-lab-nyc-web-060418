require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end

  get "/square/:number" do
    @number = (params[:number]).to_i
    @answer = (@number * @number).to_s
    "#{@answer}"
  end

  get '/say/:number/:phrase' do
    @phrase = params[:phrase]
    string = ""
    (params[:number].to_i).times do
      string += "#{@phrase}\n"
    end
    string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
      operation = params[:operation]
      number1 = params[:number1].to_i
      number2 = params[:number2].to_i
      if operation == "add"
        answer = number1 + number2
      elsif operation == "subtract"
        answer = number1 - number2
      elsif operation == "multiply"
        answer = number1 * number2
      elsif operation == "divide"
        answer = number1 / number2
      else
        answer = "Unable to perform this operation"
      end
      answer.to_s
    end



end



# Create a dynamic route at get '/reversename/:name' that accepts a name and renders the name backwards.
#
# Create a dynamic route at get '/square/:number' that accepts a number and returns the square of that number. Note: Remember that values in params always come in as strings, and your return value for the route should also be a string (use .to_i and .to_s).
#
# Create a dynamic route at get '/say/:number/:phrase' that accepts a number and a phrase and returns that phrase in a string the number of times given.
#
# Create a dynamic route at get '/say/:word1/:word2/:word3/:word4/:word5' that accepts five words and returns a string containing all five words (i.e. word1 word2 word3 word4 word5).
#
# Create a dynamic route at get '/:operation/:number1/:number2' that accepts an operation (add, subtract, multiply or divide) and performs the operation on the two numbers provided. For example, going to /add/1/2 should render 3.
