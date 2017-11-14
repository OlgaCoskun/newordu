class Galeri < ApplicationRecord
  attr_accessible :photo

  mount_uploader :photo, PhotoUploader
end
