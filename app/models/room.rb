class Room < ApplicationRecord
	has_many :vacancies, dependent: :destroy
	has_many :reservations
	has_many :room_images, dependent: :destroy
	belongs_to :facility
	accepts_nested_attributes_for :room_images, allow_destroy: true
	accepts_attachments_for :room_images, attachment: :image

end
