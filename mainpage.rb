require 'sinatra'
require './mandrill.rb'

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
 	erb :order
 end

 get '/contact' do  
 	@title= "Contact page"   
 	erb :contact
 end

 post "/contact" do
	send_mail params[:subject], params[:name], params[:message], params[:email_address]
	puts "MY PARAMS ARE" + params.inspect
	"Message sent"
end
