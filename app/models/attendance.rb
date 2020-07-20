class Attendance < ApplicationRecord
  extend Enumerize
  
  belongs_to :user
  belongs_to :guest
  belongs_to :event
  
  enumerize :entry, in: {ok: 1, neutral: 2, ng: 3}
end
