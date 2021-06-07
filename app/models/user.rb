class User < ApplicationRecord
  has_many :guides, dependent: :destroy

  mount_uploader :image, ImageUploader

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
