class MemesController < ApplicationController
  	
  def new
  	@meme = Meme.new

  	render json: @meme
  end

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
  	@meme = Meme.
  end

  def returnAll
  	@meme = Meme.all

  	render json: @meme
  end

end