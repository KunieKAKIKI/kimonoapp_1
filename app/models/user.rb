class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  #imageカラムに、ImageUploaderを紐付け
  mount_uploader :image, ImageUploader

  has_many :favorites, dependent: :destroy
  has_many :favorite_coordinates, through: :favorites, source: :coordinate

  has_many :items, dependent: :destroy
  has_many :coordinates, dependent: :destroy
  has_many :comments, dependent: :destroy

  validates :name,  presence: true, length: { maximum: 30 }
end
