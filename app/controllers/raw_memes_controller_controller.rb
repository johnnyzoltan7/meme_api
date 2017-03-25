class RawMemesControllerController < ApplicationController
	def new
		@RawMeme = RawMeme.new
	end

	def create
		@RawMeme = RawMeme.new(memeParam)
	end

	private

	def memeParam
		img_url: params[:url]
	end

end
