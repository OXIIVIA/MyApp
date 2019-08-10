class Artist < ApplicationRecord
  mount_uploader :image, ImageUploader

end
