require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!



  get '/reversename/:name' do
    @name = params[:name]
    @new_name = @name.reverse
    "#{@new_name}"
  end

  get '/square/:number' do
    @new_number = params[:number].to_i ** 2
    @new_number.to_s
  end

  get '/say/:number/:phrase' do
    # @phrase = params[:phrase]
    # @number = params[:number].to_i
    string = ''
    counter = 0

    while counter < params[:number].to_i
      string += params[:phrase]
      string += ''
      counter += 1
    end
    string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    string = params[:word1] + ' ' + params[:word2] + ' ' + params[:word3] + ' ' + params[:word4] + ' ' + params[:word5] + '.'
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
