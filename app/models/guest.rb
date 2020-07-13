class Guest < ApplicationRecord
  has_many :event, through: :events_guest
  has_many :events_guest
  has_many :post, dependent: :destroy
  
  validates :name, presence: true 
  validates :email, email: { allow_blank: true }
end
