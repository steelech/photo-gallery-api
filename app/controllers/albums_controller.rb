class AlbumsController < ApplicationController
	def index
		render json: Album.all, status: 200
	end
	def show
	end
end
