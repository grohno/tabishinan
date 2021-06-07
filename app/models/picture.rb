class Picture < ApplicationRecord
  belongs_to :guide

  mount_uploader :image, ImageUploader
end
