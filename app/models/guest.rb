class Guest < ApplicationRecord
  has_many :event, through: :events_guest
  has_many :events_guest
  has_many :post, dependent: :destroy
  
  validates :name, presence: true 
  validates :my_email_attribute, email: true
end
