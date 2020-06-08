class Event < ApplicationRecord
    belongs_to :user
    has_many :event_schedule, dependent::destroy
end
