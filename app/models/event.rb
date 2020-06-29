class Event < ApplicationRecord
　has_secure_token :uuid
　
　before_validation :set_uuid 
  
  has_many :guest, through: :events_guest
  has_many :events_guest
　has_many :event_schedule, dependent: :destroy
　belongs_to :user
    
　validates :title, presence: true  
　validates :content, presence: true

  def set_uuid
    aaaa
    uuid = SecureRandom.uuid #has_secure_tokenが動かないため
  end

end