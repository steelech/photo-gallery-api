class CodeController < ApplicationController
	before_action :authenticate_user_from_token!
	before_action :authenticate_user!
	def index
		@codes = Code.all
		render json: @codes, status: 200
	end
end
