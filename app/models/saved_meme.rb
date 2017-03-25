class SavedMeme < ApplicationRecord	
	has_one raw_meme 
	has_many raw_text

	
end
