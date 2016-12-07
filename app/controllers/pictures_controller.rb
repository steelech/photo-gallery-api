class PicturesController < ApplicationController
	def index
		render json: Picture.all, status: 200
	end
	def show
	end
end
