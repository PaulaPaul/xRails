class OwnersController < ApplicationController
	def new
		@owner = Owner.new
		#@owners = Owner.all   
		#this is convention in Rails
	end
end
