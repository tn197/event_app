class Event < ApplicationRecord
　has_secure_token :uuid
    
　belongs_to :user
　has_many :event_schedule
    
　validates :title, presence: true  
　# 他
end