class MemesController < ApplicationController
	def generate
		@meme = Meme.new
		@meme.text = Meme.generate_random_text
		@meme.image_url = Meme.generate_random_url

		if (!Meme.last.nil?)
			Meme.last.destroy
		end

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

	def return_last
		@meme = Meme.last

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

	def return_all
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

	def save_meme
		@saved = Meme.new
		@saved = Meme.last.dup

		if @saved.save
			render json: {
				meme: {phrase: @saved.text, url: @saved.image_url}
			}
		else
			render json: {message: "Error Saving"}
		end
		# render json: {phrase: SavedMeme.last.text, url: SavedMeme.last.image_url}
	end
end
