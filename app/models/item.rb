class Item < ApplicationRecord
  validates :title,  presence: true
  validates :image,  presence: true
  validates :category_id,  presence: true

  #imageカラムに、ImageUploaderを紐付け
  mount_uploader :image, ImageUploader

  belongs_to :user
  belongs_to :category
  has_many :choices, dependent: :destroy
  #has_many :choice_coordinates, through: :choices, source: :coordinate
end
