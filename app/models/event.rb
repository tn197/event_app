class Event < ApplicationRecord
　has_secure_token :uuid
  
  has_many :guest, through: :events_guest
  has_many :events_guest
　has_many :event_schedule, dependent: :destroy
　belongs_to :user
    
　validates :title, presence: true  
　validates :content, presence: true
end