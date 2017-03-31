class MemesController < ApplicationController
	def generate
		@meme = Meme.new
		@meme.text = Meme.generate_random_text
		@meme.image_url = Meme.generate_random_url

		if @meme.save
			render json: {
				message: "Success: generated random meme",
				id: @meme.id,
				phrase: @meme.text,
				url: @meme.image_url,
				status: 200
			}
		else
			render json: {
				message: "could not generate meme. feeels bad maaan",
				status: 500
			}
		end

	end

	def save
		@saved_meme = SavedMeme.new
		@saved_meme = Meme.order("id").last	

		if @saved_meme.save
			render json: {
				message: "Success: meme saved",
				id: @saved_meme.id,
				phrase: @saved_meme.text,
				url: @saved_meme.image_url,
				status: 200
			}
		else
			render json: {
				message: "Its too good to save....",
				status: 500
			}
		end
	end

	def all
		@saved_memes = SavedMeme.all

		begin
			render json: {
				message: "Success: return all saved memes",
				memes: @saved_memes,
				status: 200
			}
		rescue
			render json: {
				message: "something went wrong on the server",
				status: 500
			}
		end
	end

end