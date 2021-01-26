require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name}".reverse
  end
  get '/square/:number' do
    @number = params[:number].to_i * params[:number].to_i
    "#{@number}"
  end
  get '/say/:number/:phrase' do
    @number = params[:number].to_i 
    @phrase = params[:phrase]
    array = []
    @number.times {|x| array << @phrase}
    array.join(" ")
  end
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @w1 = params[:word1]
    @w2 = params[:word2]
    @w3 = params[:word3]
    @w4 = params[:word4]
    @w5 = params[:word5]
    "#{@w1} #{@w2} #{@w3} #{@w4} #{@w5}."
  end
  get "/:operation/:number1/:number2" do
    @number_1 = params[:number1].to_i
    @number_2 = params[:number2].to_i
    if params[:operation] == "add"
      "#{@number_1 + @number_2}"
    elsif params[:operation] == "subtract"
      "#{@number_1 - @number_2}"
    elsif params[:operation] == "multiply"
      "#{@number_1 * @number_2}"
    elsif params[:operation] == "divide"
      "#{@number_1 / @number_2}"
    end
  end
end