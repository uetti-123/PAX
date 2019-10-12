class Facility < ApplicationRecord
	has_many :favorites
	has_many :rooms, dependent: :destroy
	has_many :images, dependent: :destroy
	accepts_nested_attributes_for :rooms, allow_destroy: true
	accepts_nested_attributes_for :images, allow_destroy: true
	accepts_attachments_for :images, attachment: :image
	def favorited_by?(enduser)
        favorites.where(enduser_id: enduser.id).exists?
    end
end
