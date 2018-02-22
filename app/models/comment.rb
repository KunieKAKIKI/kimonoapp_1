class Comment < ApplicationRecord
  validates :content,  presence: true
  belongs_to :coordinate
  belongs_to :user
end
