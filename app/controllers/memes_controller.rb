class MemesController < ApplicationController
  
  def generate
  	@meme = Meme.new
  	@meme.text = Meme.generate_random_text
  	@meme.url = Meme.generate_random_url
  	@meme.save

  	render json: @meme
  end

  def returnLast
  	
  end

  def returnAll

  end

end

