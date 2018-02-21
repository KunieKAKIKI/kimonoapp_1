class Comment < ApplicationRecord
  belongs_to :coordinate
  belongs_to :user
end
