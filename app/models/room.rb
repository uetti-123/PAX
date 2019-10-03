class Room < ApplicationRecord
	has_many :vacancies
	has_many :reservations
	belongs_to :facility
end
