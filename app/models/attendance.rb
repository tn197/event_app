class Attendance < ApplicationRecord
  extend Enumerize
  enumerize :entry, in: {ok: 1, neutral: 2, ng: 3}
  
  belongs_to :user
  belongs_to :guest
  belongs_to :event_schedule
  
end
