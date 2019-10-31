class Feature < ApplicationRecord
	has_many :facilities, through: :facility_features
	has_many :facility_features
	accepts_nested_attributes_for :facility_features
	attachment :image
end
