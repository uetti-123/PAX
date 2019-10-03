class Facility < ApplicationRecord
	attachment :image
	has_many :favorites
	has_many :rooms
end
