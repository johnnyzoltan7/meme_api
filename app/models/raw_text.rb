class RawText < ApplicationRecord

	# 0 = one_liner :: 1 = top_text :: 2 = bottom_text
	validates :type, numericality: { only_integer: true, 
									 greater_than_or_equal_to:0,
									 less_than_or_equal_to:2 }

	validates :phrase, length: { in: 1.. 50, :wrong_length "Text must be between 1 and 50 charactes"}, 
					  presence: true
end
