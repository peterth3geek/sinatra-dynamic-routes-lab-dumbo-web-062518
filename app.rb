require_relative 'config/environment'

class App < Sinatra::Base

get '/reversename/:name' do
  @name = params[:name]
  "#{@name.reverse!}"
end

get '/square/:number' do
  @number = params[:number].to_i
  "#{@number*@number}"
end

get '/say/:number/:phrase' do
  @repeat = params[:number].to_i
  @phrase = params[:phrase].to_s
  @new_phrase = ""

  @repeat.times do
    @new_phrase = @new_phrase + @phrase
  end
  @new_phrase
end

get '/say/:word1/:word2/:word3/:word4/:word5' do
  "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
end

get '/:operation/:number1/:number2' do
  @num1 = params[:number1].to_i
  @num2 = params[:number2].to_i
  @op = params[:operation].downcase
  if @op == 'add'
    "#{@num1 + @num2}"
  elsif @op == 'subtract'
    "#{@num1 - @num2}"
  elsif @op == 'multiply'
    "#{@num1 * @num2}"
  elsif @op == 'divide'
    "#{@num1/@num2}"
  end
end


end
