require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    "#{params[:name].reverse}"

  end

  get '/square/:number' do
    #  binding.pry
    result = (params[:number].to_i)**2
    "#{result.to_s}"
  end

  get '/say/:number/:phrase' do
    # binding.pry
    num = params[:number].to_i
    (0...num).map { |k| "#{params[:phrase]}" }
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    # binding.pry
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    # binding.pry
    operation = params[:operation]
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i
    case operation
    when "add"
      (number1 + number2).to_s
    when "subtract"
      (number1 - number2).to_s
    when "multiply"
      (number1 * number2).to_s
    when "divide"
      (number1 / number2).to_s
    else "error"
    end

  end

end
