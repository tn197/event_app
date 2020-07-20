class Event < ApplicationRecord
  has_secure_token :uuid

  has_many :guests, through: :events_guest
  has_many :events_guests
  has_many :attendances
  has_many :event_schedules, dependent: :destroy
  accepts_nested_attributes_for :event_schedules, allow_destroy: true
  belongs_to :user

  validates :title, presence: true  
  validates :content, presence: true
end