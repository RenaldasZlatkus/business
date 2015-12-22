require 'sinatra'
require 'sinatra/flash'
require './mandrill.rb'
require './data.rb'

enable :sessions

get '/home' do  
	@title= "Home"   
	erb :home
end

get '/aboutus' do  
	@title= "About us"   
	erb :aboutus
end

get '/order' do  
	@title= "Order" 
	@toppings= toppings
	@sides= sides
	@desserts= desserts
	@drinks= drinks  
	erb :order
end

post '/order' do
	order = params.clone
	order.delete_if { |key, value| value.empty? }
	# puts params.inspect
	# puts order.inspect
	send_order order, params[:name], params[:email_address], params[:address]
	flash[:notice] = "Your order has been sent."
	redirect "/home"
end

get '/contact' do  
	@title= "Contact page"   
	erb :contact
end

post "/contact" do
	send_mail params[:subject], params[:name], params[:message], params[:email_address]
	# puts "MY PARAMS ARE" + params.inspect
	flash[:notice] = "Your message has been sent."
	redirect "/home"
end
