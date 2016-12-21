class PicturesController < ApplicationController
	def index
		if params["album"]
			@pictures = Album.where(name: params["album"]).first.pictures
		else
			@pictures = Picture.all
		end
		render json: @pictures, status: 200
	end

	def create
		render json: {}, status: 200

	end

	def show
	end
end
