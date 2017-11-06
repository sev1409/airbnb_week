class Review < ApplicationRecord
  belongs_to :puppy

  validates :rating, presence: true
  validates :comment, presence: true
end
