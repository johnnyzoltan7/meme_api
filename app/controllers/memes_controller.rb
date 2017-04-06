class MemesController < ApplicationController
	def generate
		if (!Meme.exists?)
			@meme = Meme.new
		else
			@meme = Meme.last
		end

		# @meme.text = Meme.generate_random_text
		# @meme.image_url = Meme.generate_random_url

		if @meme.update(
			text: Meme.generate_random_text,
			image_url: Meme.generate_random_url)
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

	def return_all
		@meme = Meme.all.limit(Meme.count-1)

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

		if(Meme.exists?)
			@saved = Meme.new
			@saved = Meme.last.dup
			if(Meme.number_of_dup(@saved) < 2)
				if @saved.save
					render json: {
						meme: {phrase: @saved.text, url: @saved.image_url}
					}
				else
					render json: {message: "Error Saving"}
				end
			else
				render json: {message: "Y U NO make new meme first??"}
			end
		else
			render json: {message: "Y U NO make meme first??"}
		end
	end

end
