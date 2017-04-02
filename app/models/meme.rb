class Meme < ApplicationRecord
  validates :text, presence: true
  validates :image_url,  presence: true

  MEME_URLS = [
		{ :name => "one", 		:url => "https://cdn.meme.am/images/2965710.jpg"},
		{ :name => "two", 		:url => "https://i.imgflip.com/183pvg.jpg"},
		{ :name => "three", 	:url => "http://images.memes.com/character/tile/12-year-old-redditor.jpg"},
		{ :name => "four", 		:url => "https://imgflip.com/s/meme/Star-Wars-Yoda.jpg"},
		{ :name => "five", 		:url => "https://s-media-cache-ak0.pinimg.com/736x/ca/7c/0a/ca7c0a77eecd2b59455d61309d18f5b2.jpg"},
		{ :name => "six", 		:url => "http://1.bp.blogspot.com/-qGgPqYBh38Q/VplUDyJkCFI/AAAAAAACCUE/DMA0E5VqrKU/s1600/Dads%2Bare%2Bthe%2BOriginal%2BHipsters%2B%252811%2529.jpg"},
		{ :name => "seven", 	:url => "http://i2.kym-cdn.com/photos/images/original/000/320/114/585.jpg"},
		{ :name => "eight", 	:url => "8"},
		{ :name => "nine", 		:url => "9"},
		{ :name => "ten", 		:url => "00"},
		{ :name => "eleven", 	:url => "11"},
		{ :name => "twelve", 	:url => "22"},
		{ :name => "thirteen", 	:url => "33"},
		{ :name => "fourteen", 	:url => "44"},
		{ :name => "fifteen", 	:url => "55"},
		{ :name => "sixteen", 	:url => "66"},
		{ :name => "seventeen",	:url => "77"},
		{ :name => "eightteen",	:url => "88"},
		{ :name => "nineteen", 	:url => "99"},
		{ :name => "twenty", 	:url => "20"},
		{ :name => "twentyone",	:url => "21"}
	].freeze

	MEME_TEXT = [
		{ :name => "one", 		:text => "1" },
		{ :name => "two", 		:text => "2" },
		{ :name => "three", 	:text => "3" },
		{ :name => "four", 		:text => "4" },
		{ :name => "five", 		:text => "5" },
		{ :name => "six", 		:text => "6" },
		{ :name => "seven", 	:text => "7" },
		{ :name => "eight", 	:text => "8" },
		{ :name => "nine", 		:text => "9" },
		{ :name => "ten", 		:text => "00" },
		{ :name => "eleven", 	:text => "11" },
		{ :name => "twelve", 	:text => "22" },
		{ :name => "thirteen", 	:text => "33" },
		{ :name => "fourteen", 	:text => "44" },
		{ :name => "fifteen", 	:text => "I want it over three" },
		{ :name => "sixteen", 	:text => "wait, wut" },
		{ :name => "seventeen",	:text => "I know, right?" },
		{ :name => "eightteen",	:text => "Wanna go for a hike?" },
		{ :name => "nineteen", 	:text => "Go to bed dude" },
		{ :name => "twenty", 	:text => "When You can't get a date to the vet" },
		{ :name => "twentyone",	:text => "My body is ready." }
	].freeze

	def self.generate_random_url
		MEME_URLS.sample[:url]
	end

	def self.generate_random_text
		MEME_TEXT.sample[:text]
	end

	private
end
