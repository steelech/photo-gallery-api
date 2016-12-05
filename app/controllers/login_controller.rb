class LoginController < ApplicationController
	def show
		@codes = Code.all
		render json: @codes, status: 200 
	end
end
