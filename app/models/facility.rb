class Facility < ApplicationRecord
	has_many :favorites, dependent: :destroy
	has_many :favoriting_endusers, through: :favorites, source: :enduser
	has_many :rooms, dependent: :destroy
	has_many :images, dependent: :destroy
	has_many :features, through: :facility_features
	has_many :facility_features
	accepts_nested_attributes_for :rooms, allow_destroy: true
	#accepts_attachments_for :images, attachment: :image
	accepts_nested_attributes_for :images, allow_destroy: true

	geocoded_by :address
	after_validation :geocode, if: :address_changed?

	def self.search(search)
		Facility.where(['heading LIKE?', "%#{search}%"])
	end
end
