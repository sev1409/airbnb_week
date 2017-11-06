class Puppy < ApplicationRecord
  belongs_to :booking
  has_many :reviews
  has_many :users, through: :bookings

  validates :name, presence: true
  validates :address, presence: true
  validates :breed, presence: true
  validates :description, presence: true
end
