class Item < ApplicationRecord

  #imageカラムに、ImageUploaderを紐付け
  mount_uploader :image, ImageUploader

  belongs_to :user
  belongs_to :category
  has_many :choices, dependent: :destroy
  #has_many :choice_coordinates, through: :choices, source: :coordinate
end
