class Puppy < ApplicationRecord
  has_attachment :photo
  has_many :bookings
  has_many :reviews
  # has_many :users, through: :bookings
  belongs_to :user

  validates :name, presence: true
  validates :address, presence: true
  validates :breed, presence: true
  validates :description, presence: true
end
