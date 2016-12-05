class CodeController < ApplicationController
	def index
		puts "request: #{request.headers['Authorization']}"
		if request.headers['Authorization'] == "Bearer some bs"
			@codes = Code.all
			render json: @codes, status: 200
		else
			render json: {}, status: 404
		end
	end
end
