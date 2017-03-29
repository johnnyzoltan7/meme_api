class MemesController < ApplicationController
  
  def generate
  	@meme = Meme.new
  	@meme.text = Meme.generate_random_text
  	@meme.url = Meme.generate_random_url

  	render json: @meme

  end

  def save
  	@meme.save
  end

end
