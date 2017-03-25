class RawMeme < ApplicationRecord   

	#addon 'valid_url' checks if the given meme-url is a valid url or not
	validates :url, :url =>true
end

