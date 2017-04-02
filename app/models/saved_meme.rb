class SavedMeme < ApplicationRecord
  validates :text, presence: true
  validates :image_url,  presence: true
end
