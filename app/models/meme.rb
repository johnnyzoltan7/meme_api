class Meme < ApplicationRecord
  validates :text, presence: true
  validates :image_url,  presence: true

  MEME_URLS = [
		{ :name => "one", 		:url => "1"},
		{ :name => "two", 		:url => "2"},
		{ :name => "three", 	:url => "3"},
		{ :name => "four", 		:url => "4"},
		{ :name => "five", 		:url => "5"},
		{ :name => "six", 		:url => "6"},
		{ :name => "seven", 	:url => "7"},
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
		{ :name => "fifteen", 	:text => "55" },
		{ :name => "sixteen", 	:text => "66" },
		{ :name => "seventeen",	:text => "77" },
		{ :name => "eightteen",	:text => "88" },
		{ :name => "nineteen", 	:text => "99" },
		{ :name => "twenty", 	:text => "20" },
		{ :name => "twentyone",	:text => "21" }	
	].freeze

	def self.generate_random_url
		MEME_URLS.sample[:url]
	end

	def self.generate_random_text
		MEME_TEXT.sample[:text]
	end

end
