class Meme < ApplicationRecord
  validates :text, 		presence: true
  validates :image_url, presence: true

  MEME_URLS = [
		{ :name => "one", 		:url => "https://cdn.meme.am/images/2965710.jpg"},
		{ :name => "two", 		:url => "https://i.imgflip.com/183pvg.jpg"},
		{ :name => "three", 	:url => "http://images.memes.com/character/tile/12-year-old-redditor.jpg"},
		{ :name => "four", 		:url => "https://imgflip.com/s/meme/Star-Wars-Yoda.jpg"},
		{ :name => "five", 		:url => "https://s-media-cache-ak0.pinimg.com/736x/ca/7c/0a/ca7c0a77eecd2b59455d61309d18f5b2.jpg"},
		{ :name => "six", 		:url => "http://1.bp.blogspot.com/-qGgPqYBh38Q/VplUDyJkCFI/AAAAAAACCUE/DMA0E5VqrKU/s1600/Dads%2Bare%2Bthe%2BOriginal%2BHipsters%2B%252811%2529.jpg"},
		{ :name => "seven", 	:url => "http://i2.kym-cdn.com/photos/images/original/000/320/114/585.jpg"},
		{ :name => "seal", 	:url => "https://img.memesuper.com/6a065edd517d2c7491080b5ca58d030c_-without-text-iimgurcom-meme-images-without-text_650-475.jpeg"},
		{ :name => "aliens", 		:url => "https://img.memesuper.com/a4b58ef54948c3c2e0a2c1a0cb179d21_ancient-aliens-meme-generator-meme-images-without-text_461-403.jpeg"},
		{ :name => "fatbaby", 		:url => "https://img.memesuper.com/f00342219a6f47bbae25ce7c8b68f7be_fat-baby-meme-generator-meme-images-without-text_590-408.jpeg"},
		{ :name => "grandma", 	:url => "https://img.memesuper.com/3686125ea8cdc7ce65e91bd676f90501_-meme-template-thumbnail-meme-images-without-text_640-480.jpeg"},
		{ :name => "sponge", 	:url => "https://img.memesuper.com/676e5799e1b8a1f574757e819db8a586_more-photos-tags-funny-meme-images-without-text_610-813.jpeg"},
		{ :name => "uglybaby", 	:url => "https://img.memesuper.com/676e5799e1b8a1f574757e819db8a586_more-photos-tags-funny-meme-images-without-text_610-813.jpeg"},
		{ :name => "faceswap", 	:url => "http://static.boredpanda.com/blog/wp-content/uploads/2016/03/funny-snapchat-face-swaps-261__605.jpg"},
		{ :name => "diver", 	:url => "http://thefw.com/files/2012/05/funny-diver-faces-11.jpg"},
		{ :name => "mcdonalds", 	:url => "https://s-media-cache-ak0.pinimg.com/236x/05/7d/5b/057d5bb55114aec90bbd252781ae0c79.jpg"},
		{ :name => "cats",	:url => "http://yadbw.com/wp-content/uploads/2017/04/wpid-funny-cat-images-with-captions.jpg"},
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
		{ :name => "seven", 	:text => "really?" },
		{ :name => "eight", 	:text => "hey gurl, you look fine" },
		{ :name => "nine", 		:text => "im watching you" },
		{ :name => "ten", 		:text => "no one asked how I was doing" },
		{ :name => "eleven", 	:text => "I should study" },
		{ :name => "twelve", 	:text => "no monday! I wasnt ready" },
		{ :name => "thirteen", 	:text => "well played taco bell" },
		{ :name => "fourteen", 	:text => "I like yer style dude" },
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

	def self.number_of_dup(a)
		Meme.all.where(text:a.text,image_url:a.image_url).count
	end

	private
end
