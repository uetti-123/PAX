class RoomImage < ApplicationRecord
	attachment :image
	belongs_to :room
end
