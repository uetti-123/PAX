class Enduser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :people
  has_many :favorites, dependent: :destroy
  has_many :favorite_facilities, through: :favorites, source: :facility
  has_many :reservations
end
