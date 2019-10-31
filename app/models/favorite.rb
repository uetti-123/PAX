class Favorite < ApplicationRecord
	belongs_to :enduser
	belongs_to :facility, counter_cache: :favorites_count
end
