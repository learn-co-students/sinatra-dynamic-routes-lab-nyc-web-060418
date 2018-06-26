require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do
    @num = params[:number].to_i
    "#{@num * @num}"
  end

  get '/say/:number/:phrase' do
    @num_loop = params[:number].to_i
    @phrase = params[:phrase]

      (@phrase + "\n") * @num_loop
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @words = [params[:word1], params[:word2], params[:word3], params[:word4], params[:word5]]
    @words.join("\s") + "."
  end

  get '/:operation/:number1/:number2' do
    operation_hash = {"add" => :+, "subtract" => :-, "multiply" => :*, "divide" => :/}
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    "#{@num1.send(operation_hash[@operation], @num2)}"
  end

end
