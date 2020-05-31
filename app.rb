require_relative 'config/environment'

class App < Sinatra::Base
get '/reversename/:name' do
@name=params[:name].reverse
"#{@name}"
end

get '/square/:number' do
@result = params[:number].to_i**2
"#{@result}"
end

get '/say/:number/:phrase' do
@num=params[:number].to_i
@phrase=params[:phrase]
"#{@phrase}\n" * @num
end

get '/say/:word1/:word2/:word3/:word4/:word5' do
"#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
end

get '/:operation/:number1/:number2' do
if params[:operation] == "add"
   @num=params[:number1].to_i + params[:number2].to_i
   "#{@num}"
   elsif params[:operation] == "subtract"
      @num=params[:number1].to_i - params[:number2].to_i
      "#{@num}"
 elsif params[:operation] == "multiply"
   @num=params[:number1].to_i * params[:number2].to_i
   "#{@num}"
 else
   @num=params[:number1].to_i / params[:number2].to_i
   "#{@num}"
 end
end

end
