class Meme < ApplicationRecord
  validates :text, 		presence: true
  validates :image_url, presence: true

  MEME_URLS = [
		{ :name => "one", 		:url => "https://cdn.meme.am/images/2965710.jpg"},
		{ :name => "two", 		:url => "https://i.imgflip.com/183pvg.jpg"},
		{ :name => "three", 	:url => "https://s-media-cache-ak0.pinimg.com/736x/1a/00/3d/1a003dad2a0c508645744b4406f0ef92.jpg"},
		{ :name => "four", 		:url => "https://imgflip.com/s/meme/Star-Wars-Yoda.jpg"},
		{ :name => "five", 		:url => "https://s-media-cache-ak0.pinimg.com/736x/ca/7c/0a/ca7c0a77eecd2b59455d61309d18f5b2.jpg"},
		{ :name => "six", 		:url => "https://i.ytimg.com/vi/5otsXb9TXZw/maxresdefault.jpg"},
		{ :name => "seal", 		:url => "https://img.memesuper.com/6a065edd517d2c7491080b5ca58d030c_-without-text-iimgurcom-meme-images-without-text_650-475.jpeg"},
		{ :name => "aliens", 	:url => "https://img.memesuper.com/a4b58ef54948c3c2e0a2c1a0cb179d21_ancient-aliens-meme-generator-meme-images-without-text_461-403.jpeg"},
		{ :name => "fatbaby", 	:url => "https://img.memesuper.com/f00342219a6f47bbae25ce7c8b68f7be_fat-baby-meme-generator-meme-images-without-text_590-408.jpeg"},
		{ :name => "grandma", 	:url => "https://img.memesuper.com/3686125ea8cdc7ce65e91bd676f90501_-meme-template-thumbnail-meme-images-without-text_640-480.jpeg"},
		{ :name => "sponge", 	:url => "https://img.memesuper.com/676e5799e1b8a1f574757e819db8a586_more-photos-tags-funny-meme-images-without-text_610-813.jpeg"},
		{ :name => "uglybaby", 	:url => "https://img.memesuper.com/676e5799e1b8a1f574757e819db8a586_more-photos-tags-funny-meme-images-without-text_610-813.jpeg"},
		{ :name => "faceswap", 	:url => "https://pbs.twimg.com/media/C1lyYWpWgAENkYH.jpg"},
		{ :name => "diver", 	:url => "https://pbs.twimg.com/profile_images/738907693050527744/rXldB0WC.jpg"},
		{ :name => "mcdonalds", :url => "https://s-media-cache-ak0.pinimg.com/236x/05/7d/5b/057d5bb55114aec90bbd252781ae0c79.jpg"},
		{ :name => "cats",		:url => "https://s-media-cache-ak0.pinimg.com/236x/07/9a/5e/079a5e7ef24cef792d82a5f3fb443d02.jpg"},
		{ :name => "eightteen",	:url => "https://www.gannett-cdn.com/-mm-/68a79264061c59df36124ef7996341e972f65d97/c=0-761-8100-5337&r=x329&c=580x326/local/-/media/2017/02/21/USATODAY/USATODAY/636232917167728769-futurama.png"},
		{ :name => "nineteen", 	:url => "https://pbs.twimg.com/media/B7LP6T_CQAAOrv2.jpg"},
		{ :name => "twenty", 	:url => "https://s-media-cache-ak0.pinimg.com/736x/0d/11/ba/0d11ba2525b9f867ca90a08f6468832d.jpg"},
		{ :name => "twentyone",	:url => "https://i.ytimg.com/vi/FBUaE8Fop8U/maxresdefault.jpg"}
	].freeze

	MEME_TEXT = [
		{ :name => "one", 		:text => "I was just testing it" },
		{ :name => "two", 		:text => "I am so embarrased, I wish everybody was dead" },
		{ :name => "three", 	:text => "oh ok" },
		{ :name => "four", 		:text => "" },
		{ :name => "five", 		:text => "??" },
		{ :name => "six", 		:text => "We don't really need that" },
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
