class Meme < ApplicationRecord
  validates :text, presence: true
  validates :url,  presence: true

  MEME_URLS = [
		{ name: "one", 		url: ""},
		{ name: "two", 		url: ""},
		{ name: "three", 	url: ""},
		{ name: "four", 	url: ""},
		{ name: "five", 	url: ""},
		{ name: "six", 		url: ""},
		{ name: "seven", 	url: ""},
		{ name: "eight", 	url: ""},
		{ name: "nine", 	url: ""},
		{ name: "ten", 		url: ""},
		{ name: "eleven", 	url: ""},
		{ name: "twelve", 	url: ""},
		{ name: "thirteen", url: ""},
		{ name: "fourteen", url: ""},
		{ name: "fifteen", 	url: ""},
		{ name: "sixteen", 	url: ""},
		{ name: "seventeen",url: ""},
		{ name: "eightteen",url: ""},
		{ name: "nineteen", url: ""},
		{ name: "twenty", 	url: ""},
		{ name: "twentyone",url: ""}
	].freeze

	MEME_TEXT = [
		{ name: "one", 		text: "" },
		{ name: "two", 		text: "" },
		{ name: "three", 	text: "" },
		{ name: "four", 	text: "" },
		{ name: "five", 	text: "" },
		{ name: "six", 		text: "" },
		{ name: "seven", 	text: "" },
		{ name: "eight", 	text: "" },
		{ name: "nine", 	text: "" },
		{ name: "ten", 		text: "" },
		{ name: "eleven", 	text: "" },
		{ name: "twelve", 	text: "" },
		{ name: "thirteen", text: "" },
		{ name: "fourteen", text: "" },
		{ name: "fifteen", 	text: "" },
		{ name: "sixteen", 	text: "" },
		{ name: "seventeen",text: "" },
		{ name: "eightteen",text: "" },
		{ name: "nineteen", text: "" },
		{ name: "twenty", 	text: "" },
		{ name: "twentyone",text: "" }	
	].freeze

	def self.generate_random_url
		MEME_TEXT.sample
	end

	def self.generate_random_text
		MEME_URLS.sample
	end


end
