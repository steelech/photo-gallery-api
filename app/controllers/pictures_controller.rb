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
		(0..numFiles).each do |file_numb|
			puts "file: #{files[file_numb.to_s]}"
			file = files[file_numb.to_s]
			
		end

	end

	def show
	end
end
