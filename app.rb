require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  # goodbye name
  get "/goodbye/:name" do
    @user_name = params[:name]
    "Goodbye #{@user_name}!"
  end

  # multiply nums
  get "/multiply/:num1/:num2" do
    @num1 = params[:num1] #these are strings!
    @num2 = params[:num2] #these are strings!
    @result = @num1.to_i * @num2.to_i #need to turn strings into integers, then multiply
    "#{@result}"
  end

end #end class
