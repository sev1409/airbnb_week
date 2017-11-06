class Booking < ApplicationRecord
  belongs_to :user
  has_many :puppies

  validates :date, presence: true
end
