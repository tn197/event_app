class Post < ApplicationRecord
  belongs_to :user
  belongs_to :guest
  
  validates :content, presence: true 
end
