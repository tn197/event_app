class Event < ApplicationRecord
    has_secure_token :uuid
    
    belongs_to :user
    has_many :event_schedule
    
end