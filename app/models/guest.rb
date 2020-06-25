class Guest < ApplicationRecord
  has_many :event, through: :events_guest
  has_many :events_guest
  has_many :post, dependent: :destroy
  
  validates :name, presence: true 
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, uniqueness: true, format: { with: VALID_EMAIL_REGEX }
end
