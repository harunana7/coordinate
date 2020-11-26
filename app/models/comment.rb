class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :coordinate

  validates :text, presence: true
  
end
