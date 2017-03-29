class MemesController < ApplicationController
	def generate
		@meme = Meme.new
		@meme.text = Meme.generate_random_text
		@meme.image_url = Meme.generate_random_url

		if @meme.save
			render json: {
				message: "Success!",
				phrase: @meme.text,
				url: @meme.image_url
			}
		else
			render json: {
				message: "could not generate meme. feeels bad maaan"
			}
		end

	end

	def returnLast
		@meme = Meme.order("id").last

		begin
			render json: {
				message: "Success!",
				meme: {phrase: @meme.text, url: @meme.image_url}
			}
		rescue
			render json: {
				message: "There is something wrong"
			}
		end  	
	end

	def returnAll
		@meme = Meme.all

		begin
			render json: {
				message: "Success!",
				memes: @meme

			}
		rescue
			render json: {
				message: "something went wrong on the server"
			}
		end
	end

end