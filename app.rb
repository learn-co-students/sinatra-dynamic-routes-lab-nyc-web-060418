require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    @rv_name = @name.reverse
    "#{@rv_name}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    @sqr_number = @number * @number
    "#{@sqr_number}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @output = []
    @number.times do
    @output << "#{@phrase}"
    end
    "#{@output}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word_1 = params[:word1]
    @word_2 = params[:word2]
    @word_3 = params[:word3]
    @word_4 = params[:word4]
    @word_5 = params[:word5]
    @output = @word_1 + " " + @word_2 + " " + @word_3 + " " + @word_4 + " " +  @word_5 + "."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number_1 = params[:number1].to_i
    @number_2 = params[:number2].to_i
    
    if @operation == "add"
      "#{@number_1 + @number_2}"
    elsif @operation == "multiply"
      "#{@number_1 * @number_2}"
    elsif @operation == "subtract"
      "#{@number_1 - @number_2}"
    elsif @operation == "divide"
      "#{@number_1 / @number_2}"
    end
  end

end
