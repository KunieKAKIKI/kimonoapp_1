class Coordinate < ApplicationRecord
  validates :title,  presence: true
  validates :image,  presence: true
  validates :content,  presence: true

  #imageカラムに、ImageUploaderを紐付け
  mount_uploader :image, ImageUploader

  has_many :favorites, dependent: :destroy
  has_many :favorite_users, through: :favorites, source: :user

  has_many :choices, dependent: :destroy
  has_many :choice_items, through: :choices, source: :item

  belongs_to :user

  has_many :comments, dependent: :destroy
end
