class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :bookings
  # has_many :puppies, through: :bookings
  has_many :puppies

  # validates :first_name, presence: true
  # validates :last_name, presence: true
  validates :email, presence: true
end
