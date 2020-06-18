class Event < ApplicationRecord
　has_secure_token :uuid
    
　has_many :event_schedule
　belongs_to :user
    
　validates :title, presence: true  
　# 他
end