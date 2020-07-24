require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @user_name = params[:name].reverse
    "#{@user_name}"
  end
  get '/square/:number' do
    @user_num = params[:number].to_i**2
    "#{@user_num}"
  end
  get '/say/:number/:phrase' do
    @say_phrase = ""
     @user_num = params[:number].to_i
     @user_phrase = params[:phrase]
      @user_num.times do
       @say_phrase<<"#{@user_phrase}\n"
     end
     @say_phrase
  end
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end
  get '/:operation/:number1/:number2' do
    @oper = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    @answer = ""
    if @oper == "add"
      @answer = @num1 + @num2
    elsif @oper == "multiply"
    @answer = @num1 * @num2
  elsif @oper == "subtract"
    @answer = @num1 - @num2
  elsif @oper == "divide"
    @answer = @num1 / @num2
  else
     @answer = "This operation can't be perform."
  end
  "#{@answer}"
end
end
