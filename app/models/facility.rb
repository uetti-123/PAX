class Facility < ApplicationRecord
	attachment :image
	has_many :favorites
	has_many :rooms
	has_many :images
	accepts_nested_attributes_for :rooms, allow_destroy: true
	accepts_nested_attributes_for :images, allow_destroy: true
end
