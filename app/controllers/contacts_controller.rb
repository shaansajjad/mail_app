class ContactsController < ApplicationController


	def new
		@contact = Contact.new 

	end

	def create
		@contact=Contact.new(params[:contact])
		@contact.request = request
		if @contact.deliver
			flash.now[:error] = nil
		else
			flash.new[:error] = 'cannot send message.'
			render :new
		end

	end 
 
end