class Image < ApplicationRecord
	attachment :image
	belongs_to :facility
end
