class Post < ApplicationRecord
  belongs_to :user
  belongs_to :guest
  
  validates :content, length: { minimum: 1 } 
end
