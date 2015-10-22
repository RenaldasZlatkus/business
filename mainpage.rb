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
