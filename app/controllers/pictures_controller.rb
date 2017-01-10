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
		files = params[:files]
		numFiles = params[:numFiles].to_i

		render json: {}, status: 200
		(0..numFiles - 1).each do |file_numb|
			file = files[file_numb.to_s]
			Picture.create!({bucket: file[:Bucket], key: file[:Key]})
		end

	end

	def show
	end
end
