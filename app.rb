require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    rev_name = params[:name].reverse
    "#{rev_name}"
  end
  get '/square/:number' do
    num = params[:number].to_i
    sqnum = num**2
    "#{sqnum}"
  end
  get '/say/:number/:phrase' do
    num = params[:number].to_i
    phr = params[:phrase]
    final_str = ""
    num.times do
      final_str += "#{phr}\n"
    end
    final_str
  end
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end
  get '/:operation/:number1/:number2' do
    num1 = params[:number1]
    num2 = params[:number2]
    op = params[:operation]
    res = num1.send("#{op}",num2)
    "#{res}"
  end
end
