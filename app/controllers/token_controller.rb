class TokenController < ApplicationController
	def show
		if params["username"] == 'charles' && params["password"] == "steele"
			render json: {access_token: "some bs"}, status: 200
		else
			render json: {error: "bad username/password combo"}, status: 400
		end
	end
end
